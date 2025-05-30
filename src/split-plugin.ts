import {
  AutomationSwitched,
  SplitConfigCreated,
  SplitConfigDeleted,
  SplitConfigFailed,
  SplitExecuted,
  SplitPlugin
} from "../generated/SplitPlugin/SplitPlugin"

import {
  User,
  SplitConfig,
  SplitRecipient,
  SplitExecution,
  RecipientPayout,
  FailedSplitExecution,
  AutomationToggle,
  SplitConfigDeletion,
  SplitConfigUpdate,
  GlobalStats
} from "../generated/schema"
import { BigInt, Bytes, Address, log, BigDecimal, ethereum } from "@graphprotocol/graph-ts"

const BIGINT_ZERO = BigInt.fromI32(0)
const BIGINT_ONE = BigInt.fromI32(1)
const MAX_PERCENTAGE = BigInt.fromI32(100000000)
const GLOBAL_STATS_ID = Bytes.fromHexString("0x676c6f62616c")

function getOrCreateUser(address: Address, timestamp: BigInt, block: BigInt): User {
  let user = User.load(address)
  if (!user) {
    user = new User(address)
    user.createdAt = timestamp
    user.totalConfigs = BIGINT_ZERO
    user.activeConfigs = BIGINT_ZERO
    user.save()
    
    updateGlobalStats(timestamp, true, false, false, false)
  }
  return user
}

function getOrCreateGlobalStats(): GlobalStats {
  let stats = GlobalStats.load(GLOBAL_STATS_ID)
  if (!stats) {
    stats = new GlobalStats(GLOBAL_STATS_ID)
    stats.totalUsers = BIGINT_ZERO
    stats.totalConfigs = BIGINT_ZERO
    stats.totalActiveConfigs = BIGINT_ZERO
    stats.totalDeletedConfigs = BIGINT_ZERO
    stats.totalExecutions = BIGINT_ZERO
    stats.totalFailedExecutions = BIGINT_ZERO
    stats.lastUpdated = BIGINT_ZERO
  }
  return stats
}

function updateGlobalStats(
  timestamp: BigInt,
  newUser: boolean,
  newConfig: boolean,
  deletedConfig: boolean,
  execution: boolean
): void {
  let stats = getOrCreateGlobalStats()
  
  if (newUser) stats.totalUsers = stats.totalUsers.plus(BIGINT_ONE)
  if (newConfig) {
    stats.totalConfigs = stats.totalConfigs.plus(BIGINT_ONE)
    stats.totalActiveConfigs = stats.totalActiveConfigs.plus(BIGINT_ONE)
  }
  if (deletedConfig) {
    stats.totalActiveConfigs = stats.totalActiveConfigs.minus(BIGINT_ONE)
    stats.totalDeletedConfigs = stats.totalDeletedConfigs.plus(BIGINT_ONE)
  }
  if (execution) {
    stats.totalExecutions = stats.totalExecutions.plus(BIGINT_ONE)
  }
  
  stats.lastUpdated = timestamp
  stats.save()
}

export function handleSplitConfigCreated(event: SplitConfigCreated): void {
  let contract = SplitPlugin.bind(event.address)
  let configIndex = event.params.configIndex
  let userAddress = event.params.user

  let configResult = contract.try_getSplitConfig(configIndex)
  if (configResult.reverted) {
    log.error("Failed to get config details for index {}", [configIndex.toString()])
    return
  }
  
  let configData = configResult.value
  let tokenAddress = configData.getTokenAddress()
  let splitAddresses = configData.getSplitAddresses()
  let percentages = configData.getPercentages()
  let minTokenAmount = configData.getMinTokenAmount()
  let isSplitEnabled = configData.getIsSplitEnabled()
  
  let user = getOrCreateUser(userAddress, event.block.timestamp, event.block.number)
  user.totalConfigs = user.totalConfigs.plus(BIGINT_ONE)
  user.activeConfigs = user.activeConfigs.plus(BIGINT_ONE)
  user.save()
  
  let configId =changetype<Bytes>(Bytes.fromBigInt(configIndex)) 
  let config = new SplitConfig(configId)
  config.user = userAddress as Bytes
  config.configIndex = configIndex
  config.tokenAddress = tokenAddress
  config.minTokenAmount = minTokenAmount
  config.isSplitEnabled = isSplitEnabled
  config.deleted = false
  config.createdAt = event.block.timestamp
  config.updatedAt = event.block.timestamp
  config.createdTxHash = event.transaction.hash
  config.totalExecutions = BIGINT_ZERO
  config.totalFailedExecutions = BIGINT_ZERO
  config.save()

  for (let i = 0; i < splitAddresses.length; i++) {
    let recipientId = configId.concat(splitAddresses[i]).concat(event.transaction.hash)
    let recipient = new SplitRecipient(recipientId)
    recipient.config = configId
    recipient.recipient = splitAddresses[i]
    recipient.percentage = percentages[i]
    recipient.percentageFormatted = percentages[i].toBigDecimal().div(BigDecimal.fromString("1000000"))
    recipient.createdAt = event.block.timestamp
    recipient.isActive = true
    recipient.save()
  }
  
  updateGlobalStats(event.block.timestamp, false, true, false, false)
}

export function handleSplitExecuted(event: SplitExecuted): void {
  let contract = SplitPlugin.bind(event.address)
  let configIndex = event.params.configIndex
  let configId = changetype<Bytes>(Bytes.fromBigInt(configIndex))
  
  let config = SplitConfig.load(configId)
  if (!config) {
    log.error("Config not found for execution: {}", [configIndex.toString()])
    return
  }
  
  let configResult = contract.try_getSplitConfig(configIndex)
  if (configResult.reverted) {
    log.error("Failed to get config details for execution {}", [configIndex.toString()])
    return
  }
  
  let configData = configResult.value
  let tokenAddress = configData.getTokenAddress()
  let splitAddresses = configData.getSplitAddresses()
  let percentages = configData.getPercentages()

  
  let executionId = event.transaction.hash.concatI32(event.logIndex.toI32())
  let execution = new SplitExecution(executionId)
  execution.config = configId
  execution.timestamp = event.block.timestamp
  execution.txHash = event.transaction.hash
  execution.executor = event.transaction.from
  execution.tokenAddress = tokenAddress
  execution.save()
  
  for (let i = 0; i < splitAddresses.length; i++) {
    let payoutId = executionId.concat(splitAddresses[i])
    let payout = new RecipientPayout(payoutId)
    payout.execution = executionId
    payout.recipient = splitAddresses[i]
    payout.percentage = percentages[i]
    payout.tokenAddress = tokenAddress
    payout.save()
  }
  
  config.totalExecutions = config.totalExecutions.plus(BIGINT_ONE)
  config.updatedAt = event.block.timestamp
  config.save()

  updateGlobalStats(event.block.timestamp, false, false, false, true)
}

export function handleSplitConfigFailed(event: SplitConfigFailed): void {
  let configIndex = event.params.configIndex
  let configId = changetype<Bytes>(Bytes.fromBigInt(configIndex))
  let failureReason = event.params.err
  
  let config = SplitConfig.load(configId)
  if (!config) {
    log.error("Config not found for failed execution: {}", [configIndex.toString()])
    return
  }
  
  let failureId = event.transaction.hash.concatI32(event.logIndex.toI32())
  let failure = new FailedSplitExecution(failureId)
  failure.config = configId
  failure.timestamp = event.block.timestamp
  failure.txHash = event.transaction.hash
  failure.failureReason = failureReason
  failure.failureReasonString = failureReason.toHexString()
  failure.executor = event.transaction.from
  failure.tokenAddress = config.tokenAddress
  
  failure.save()
  
  config.totalFailedExecutions = config.totalFailedExecutions.plus(BIGINT_ONE)
  config.updatedAt = event.block.timestamp
  config.save()
  
  let globalStats = getOrCreateGlobalStats()
  globalStats.totalFailedExecutions = globalStats.totalFailedExecutions.plus(BIGINT_ONE)
  globalStats.lastUpdated = event.block.timestamp
  globalStats.save()
}

export function handleAutomationSwitched(event: AutomationSwitched): void {
  let configIndex = event.params.configIndex
  let configId = changetype<Bytes>(Bytes.fromBigInt(configIndex))
  let currentState = event.params.currentState
  
  let config = SplitConfig.load(configId)
  if (!config) {
    log.error("Config not found for automation toggle: {}", [configIndex.toString()])
    return
  }
  
  let toggleId = event.transaction.hash.concatI32(event.logIndex.toI32())
  let toggle = new AutomationToggle(toggleId)
  toggle.config = configId
  toggle.timestamp = event.block.timestamp
  toggle.txHash = event.transaction.hash
  toggle.toggledBy = event.transaction.from
  toggle.previousState = config.isSplitEnabled
  toggle.newState = currentState
  toggle.save()
  
  config.isSplitEnabled = currentState
  config.updatedAt = event.block.timestamp
  config.save()
}

export function handleSplitConfigDeleted(event: SplitConfigDeleted): void {
  let configIndex = event.params.configIndex
  let configId = changetype<Bytes>(Bytes.fromBigInt(configIndex))
  
  let config = SplitConfig.load(configId)
  if (!config) {
    log.error("Config not found for deletion: {}", [configIndex.toString()])
    return
  }

  let recipientCount = BIGINT_ZERO
  let contract = SplitPlugin.bind(event.address)
  let configResult = contract.try_getSplitConfig(configIndex)
  if (!configResult.reverted) {
    let configData = configResult.value
    recipientCount = BigInt.fromI32(configData.getSplitAddresses().length)
  }

  let deletionId = event.transaction.hash.concatI32(event.logIndex.toI32())
  let deletion = new SplitConfigDeletion(deletionId)
  deletion.configIndex = configIndex
  deletion.user = config.user
  deletion.timestamp = event.block.timestamp
  deletion.txHash = event.transaction.hash
  deletion.deletedBy = event.transaction.from
  deletion.tokenAddress = config.tokenAddress
  deletion.recipientCount = recipientCount
  deletion.totalExecutions = config.totalExecutions
  deletion.totalFailures = config.totalFailedExecutions
  deletion.save()
  
  let recipients = config.recipients.load()
  for (let i = 0; i < recipients.length; i++) {
    let recipient = recipients[i]
    recipient.isActive = false
    recipient.save()
  }
  
  config.deleted = true
  config.updatedAt = event.block.timestamp
  config.save()
  
  let user = User.load(config.user)
  if (user) {
    user.activeConfigs = user.activeConfigs.minus(BIGINT_ONE)
    user.save()
  }
  
  updateGlobalStats(event.block.timestamp, false, false, true, false)
}

export function handleSplitConfigUpdated(call: ethereum.Call): void {
  
  let configIndex = call.inputValues[0].value.toBigInt()
  let newSplitAddresses = call.inputValues[1].value.toAddressArray()
  let newPercentages = call.inputValues[2].value.toBigIntArray()
  
  let configId = changetype<Bytes>(Bytes.fromBigInt(configIndex))
  let config = SplitConfig.load(configId)
  
  if (!config) {
    log.error("Config not found for update: {}", [configIndex.toString()])
    return
  }
  
  let oldRecipients: Bytes[] = []
  let oldPercentages: BigInt[] = []
  
  let recipients = config.recipients.load()
  for (let i = 0; i < recipients.length; i++) {
    if (recipients[i].isActive) {
      oldRecipients.push(recipients[i].recipient)
      oldPercentages.push(recipients[i].percentage)
    }
  }
  
  let minimumPercentage = MAX_PERCENTAGE
  for (let i = 0; i < newPercentages.length; i++) {
    if (newPercentages[i].lt(minimumPercentage)) {
      minimumPercentage = newPercentages[i]
    }
  }
  let minTokenAmount = MAX_PERCENTAGE.div(minimumPercentage)
  
  let updateId = call.transaction.hash.concatI32(call.transaction.index.toI32())
  let update = new SplitConfigUpdate(updateId)
  update.config = configId
  update.updatedBy = call.transaction.from
  update.timestamp = call.block.timestamp
  update.txHash = call.transaction.hash
  update.oldRecipients = oldRecipients
  update.oldPercentages = oldPercentages
  update.newRecipients = newSplitAddresses.map<Bytes>((addr: Address) => addr as Bytes)
  update.newPercentages = newPercentages
  update.minTokenAmount = minTokenAmount
  update.save()
  
  for (let i = 0; i < recipients.length; i++) {
    let recipient = recipients[i]
    recipient.isActive = false
    recipient.save()
  }
  
  for (let i = 0; i < newSplitAddresses.length; i++) {
    let recipientId = configId.concat(newSplitAddresses[i] as Bytes).concat(call.transaction.hash)
    let recipient = new SplitRecipient(recipientId)
    recipient.config = configId
    recipient.recipient = newSplitAddresses[i] as Bytes
    recipient.percentage = newPercentages[i]
    recipient.percentageFormatted = newPercentages[i].toBigDecimal().div(BigDecimal.fromString("1000000"))
    recipient.createdAt = call.block.timestamp
    recipient.isActive = true
    recipient.save()
  }
  
  config.minTokenAmount = minTokenAmount
  config.updatedAt = call.block.timestamp
  config.save()
}