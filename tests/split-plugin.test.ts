import {
  assert,
  describe,
  test,
  clearStore,
  newMockCall,
} from "matchstick-as/assembly/index"
import { Address, BigInt, Bytes, ethereum } from "@graphprotocol/graph-ts"
import { createAutomationSwitchedEvent, createSplitConfigCreatedEvent, createSplitConfigDeletedEvent, createSplitConfigFailedEvent, createSplitExecutedEvent, mockGetSplitConfig } from "./split-plugin-utils"
import { handleAutomationSwitched, handleSplitConfigCreated, handleSplitConfigDeleted, handleSplitConfigFailed, handleSplitExecuted } from "../src/split-plugin"

describe("SplitPlugin Tests", () => {
  test("handleSplitConfigCreated creates User and SplitConfig", () => {
    clearStore()

    const contractAddress = Address.fromString("0xa16081F360e3847006dB660bae1c6d1b2e17eC2A")
    const userAddress = Address.fromString("0xa9aaC8b17F7fb7dF0104ECd53F8b635b8052b97E")
    const configIndex = BigInt.fromI32(0)
    const tokenAddress = Address.fromString("0x000000000000000000000000000000000000dead")
    const recipients = [
      Address.fromString("0x0000000000000000000000000000000000000001"),
      Address.fromString("0x0000000000000000000000000000000000000002")
    ]
    const percentages = [BigInt.fromI32(5000), BigInt.fromI32(5000)]
    const minAmount = BigInt.fromString("1000000000000000000")

    const percentagesI32 = percentages.map<i32>((p) => p.toI32())

    mockGetSplitConfig(
      contractAddress,
      configIndex,
      tokenAddress,
      recipients,
      percentagesI32,
      minAmount,
      true
    )

    let event = createSplitConfigCreatedEvent(userAddress, configIndex)
    event.address = contractAddress

    handleSplitConfigCreated(event)

    const userId = userAddress
    assert.fieldEquals("User", userId.toHexString(), "id", userId.toHexString())
    assert.fieldEquals(
      "User",
      userId.toHexString(),
      "totalConfigs",
      "1"
    )
    assert.fieldEquals(
      "User",
      userId.toHexString(),
      "activeConfigs",
      "1"
    )

    const configId = Bytes.fromBigInt(configIndex)
    assert.fieldEquals(
      "SplitConfig",
      configId.toHexString(),
      "user",
      userId.toHexString()
    )
    assert.fieldEquals(
      "SplitConfig",
      configId.toHexString(),
      "tokenAddress",
      tokenAddress.toHexString()
    )
    assert.fieldEquals(
      "SplitConfig",
      configId.toHexString(),
      "minTokenAmount",
      minAmount.toString()
    )
  })
})

describe("Multiple SplitConfig Tests", () => {
  test("Creating second SplitConfig increments counts to 2", () => {
    clearStore()

    const contractAddress = Address.fromString("0xa16081F360e3847006dB660bae1c6d1b2e17eC2A")
    const userAddress = Address.fromString("0xa9aaC8b17F7fb7dF0104ECd53F8b635b8052b97E")
    const tokenAddress = Address.fromString("0x000000000000000000000000000000000000dead")
    const recipients = [
      Address.fromString("0x0000000000000000000000000000000000000001"),
      Address.fromString("0x0000000000000000000000000000000000000002")
    ]
    const percentages = [BigInt.fromI32(5000), BigInt.fromI32(5000)]
    const minAmount = BigInt.fromString("1000000000000000000")

    const percentagesI32 = percentages.map<i32>((p) => p.toI32())

    const configIndex1 = BigInt.fromI32(0)
    mockGetSplitConfig(
      contractAddress,
      configIndex1,
      tokenAddress,
      recipients,
      percentagesI32,
      minAmount,
      true
    )
    let event1 = createSplitConfigCreatedEvent(userAddress, configIndex1)
    event1.address = contractAddress
    handleSplitConfigCreated(event1)

    assert.fieldEquals(
      "User",
      userAddress.toHexString(),
      "totalConfigs",
      "1"
    )

    const configIndex2 = BigInt.fromI32(1)
    mockGetSplitConfig(
      contractAddress,
      configIndex2,
      tokenAddress,
      recipients,
      percentagesI32,
      minAmount,
      true
    )
    let event2 = createSplitConfigCreatedEvent(userAddress, configIndex2)
    event2.address = contractAddress
    handleSplitConfigCreated(event2)

    assert.fieldEquals(
      "User",
      userAddress.toHexString(),
      "totalConfigs",
      "2"
    )
    assert.fieldEquals(
      "User",
      userAddress.toHexString(),
      "activeConfigs",
      "2"
    )

    const configId1 = Bytes.fromBigInt(configIndex1).toHexString()
    const configId2 = Bytes.fromBigInt(configIndex2).toHexString()

    assert.fieldEquals(
      "SplitConfig",
      configId1,
      "user",
      userAddress.toHexString()
    )
    assert.fieldEquals(
      "SplitConfig",
      configId2,
      "user",
      userAddress.toHexString()
    )

    const globalId = (Bytes.fromHexString("0x676c6f62616c")).toHexString()
    assert.fieldEquals(
      "GlobalStats",
      globalId,
      "totalConfigs",
      "2"
    )
  })
})

describe("handleSplitExecuted", () => {
  test("creates execution", () => {
    clearStore()

    const contractAddress = Address.fromString("0xa16081F360e3847006dB660bae1c6d1b2e17eC2A")
    const userAddress = Address.fromString("0xa9aaC8b17F7fb7dF0104ECd53F8b635b8052b97E")
    const configIndex = BigInt.fromI32(1)
    const tokenAddress = Address.fromString("0x000000000000000000000000000000000000dead")
    const recipients = [
      Address.fromString("0x0000000000000000000000000000000000000001"),
      Address.fromString("0x0000000000000000000000000000000000000002")
    ]
    const percentages = [BigInt.fromI32(5000), BigInt.fromI32(5000)]
    const minAmount = BigInt.fromString("1000000000000000000")

    const percentagesI32 = percentages.map<i32>((p) => p.toI32())

    mockGetSplitConfig(
      contractAddress,
      configIndex,
      tokenAddress,
      recipients,
      percentagesI32,
      minAmount,
      true
    )

    let event1 = createSplitConfigCreatedEvent(userAddress, configIndex)
    event1.address = contractAddress
    handleSplitConfigCreated(event1)


    let executionEvent = createSplitExecutedEvent(configIndex)
    executionEvent.address = contractAddress
    handleSplitExecuted(executionEvent)

    const configId = Bytes.fromBigInt(configIndex).toHexString()
    const executionId = executionEvent.transaction.hash
      .concatI32(executionEvent.logIndex.toI32())
      .toHexString()

    assert.fieldEquals(
      "SplitExecution",
      executionId,
      "config",
      configId
    )
    assert.fieldEquals(
      "SplitExecution",
      executionId,
      "executor",
      executionEvent.transaction.from.toHexString()
    )
    assert.fieldEquals(
      "SplitExecution",
      executionId,
      "tokenAddress",
      tokenAddress.toHexString()
    )

    for (let i = 0; i < recipients.length; i++) {
      const payoutId = executionEvent.transaction.hash
        .concatI32(executionEvent.logIndex.toI32())
        .concat(recipients[i])
        .toHexString()

      assert.fieldEquals(
        "RecipientPayout",
        payoutId,
        "recipient",
        recipients[i].toHexString()
      )
      assert.fieldEquals(
        "RecipientPayout",
        payoutId,
        "percentage",
        percentages[i].toString()
      )
    }

    assert.fieldEquals(
      "SplitConfig",
      configId,
      "totalExecutions",
      "1"
    )

    const globalId = (Bytes.fromHexString("0x676c6f62616c")).toHexString()
    assert.fieldEquals(
      "GlobalStats",
      globalId,
      "totalExecutions",
      "1"
    )
  })

  test("handling missing config", () => {
    clearStore()

    const contractAddress = Address.fromString("0xa16081F360e3847006dB660bae1c6d1b2e17eC2A")
    const configIndex = BigInt.fromI32(999)

    let executionEvent = createSplitExecutedEvent(configIndex)
    executionEvent.address = contractAddress
    handleSplitExecuted(executionEvent)

    const executionId = executionEvent.transaction.hash
      .concatI32(executionEvent.logIndex.toI32())
      .toHexString()
    assert.notInStore("SplitExecution", executionId)
  })
})

describe("handleSplitConfigFailed", () => {
  test("creating failed Record", () => {
    clearStore()

    const contractAddress = Address.fromString("0xa16081F360e3847006dB660bae1c6d1b2e17eC2A")
    const userAddress = Address.fromString("0xa9aaC8b17F7fb7dF0104ECd53F8b635b8052b97E")
    const configIndex = BigInt.fromI32(1)
    const tokenAddress = Address.fromString("0x000000000000000000000000000000000000dead")
    const recipients = [
      Address.fromString("0x0000000000000000000000000000000000000001"),
      Address.fromString("0x0000000000000000000000000000000000000002")
    ]
    const percentages = [BigInt.fromI32(5000), BigInt.fromI32(5000)]
    const minAmount = BigInt.fromString("1000000000000000000")
    const failureReason = Bytes.fromHexString("0x12345678")

    const percentagesI32 = percentages.map<i32>((p) => p.toI32())

    mockGetSplitConfig(
      contractAddress,
      configIndex,
      tokenAddress,
      recipients,
      percentagesI32,
      minAmount,
      true
    )

    let createEvent = createSplitConfigCreatedEvent(userAddress, configIndex)
    createEvent.address = contractAddress
    handleSplitConfigCreated(createEvent)

    let failureEvent = createSplitConfigFailedEvent(configIndex, failureReason)
    failureEvent.address = contractAddress
    failureEvent.transaction.from = userAddress

    handleSplitConfigFailed(failureEvent)

    const configId = Bytes.fromBigInt(configIndex).toHexString()
    const failureId = failureEvent.transaction.hash
      .concatI32(failureEvent.logIndex.toI32())
      .toHexString()

    assert.fieldEquals(
      "FailedSplitExecution",
      failureId,
      "config",
      configId
    )
    assert.fieldEquals(
      "FailedSplitExecution",
      failureId,
      "failureReason",
      failureReason.toHexString()
    )
    assert.fieldEquals(
      "FailedSplitExecution",
      failureId,
      "executor",
      failureEvent.transaction.from.toHexString()
    )
    assert.fieldEquals(
      "FailedSplitExecution",
      failureId,
      "tokenAddress",
      tokenAddress.toHexString()
    )

    assert.fieldEquals(
      "SplitConfig",
      configId,
      "totalFailedExecutions",
      "1"
    )

    const globalId = Bytes.fromHexString("0x676c6f62616c").toHexString()
    assert.fieldEquals(
      "GlobalStats",
      globalId,
      "totalFailedExecutions",
      "1"
    )
  })

})

describe("handleAutomationSwitched", () => {
  test("toogle config and update data", () => {
    clearStore()

    const contractAddress = Address.fromString("0xa16081F360e3847006dB660bae1c6d1b2e17eC2A")
    const userAddress = Address.fromString("0xa9aaC8b17F7fb7dF0104ECd53F8b635b8052b97E")
    const configIndex = BigInt.fromI32(1)
    const tokenAddress = Address.fromString("0x000000000000000000000000000000000000dead")
    const recipients = [
      Address.fromString("0x0000000000000000000000000000000000000001"),
      Address.fromString("0x0000000000000000000000000000000000000002")
    ]
    const percentages = [BigInt.fromI32(5000), BigInt.fromI32(5000)]
    const minAmount = BigInt.fromString("1000000000000000000")

    const percentagesI32 = percentages.map<i32>((p) => p.toI32())

    mockGetSplitConfig(
      contractAddress,
      configIndex,
      tokenAddress,
      recipients,
      percentagesI32,
      minAmount,
      true
    )

    let createEvent = createSplitConfigCreatedEvent(userAddress, configIndex)
    createEvent.address = contractAddress
    handleSplitConfigCreated(createEvent)

    let toggleEvent = createAutomationSwitchedEvent(configIndex, false)
    toggleEvent.address = contractAddress
    toggleEvent.transaction.from = userAddress

    handleAutomationSwitched(toggleEvent)

    const configId = Bytes.fromBigInt(configIndex).toHexString()
    const toggleId = toggleEvent.transaction.hash
      .concatI32(toggleEvent.logIndex.toI32())
      .toHexString()

    assert.fieldEquals(
      "AutomationToggle",
      toggleId,
      "config",
      configId
    )
    assert.fieldEquals(
      "AutomationToggle",
      toggleId,
      "previousState",
      "true"
    )
    assert.fieldEquals(
      "AutomationToggle",
      toggleId,
      "newState",
      "false"
    )
    assert.fieldEquals(
      "AutomationToggle",
      toggleId,
      "toggledBy",
      toggleEvent.transaction.from.toHexString()
    )

    assert.fieldEquals(
      "SplitConfig",
      configId,
      "isSplitEnabled",
      "false"
    )
  })

  test("from enable to disable state", () => {
    const configIndex = BigInt.fromI32(1)
    let toggleEvent = createAutomationSwitchedEvent(configIndex, true)
    handleAutomationSwitched(toggleEvent)

    const toggleId = toggleEvent.transaction.hash
      .concatI32(toggleEvent.logIndex.toI32())
      .toHexString()
    assert.fieldEquals(
      "AutomationToggle",
      toggleId,
      "previousState",
      "false"
    )
    assert.fieldEquals(
      "AutomationToggle",
      toggleId,
      "newState",
      "true"
    )
  })

  test("handling missing config in automationSwitch", () => {
    clearStore()

    const contractAddress = Address.fromString("0xa16081F360e3847006dB660bae1c6d1b2e17eC2A")
    const configIndex = BigInt.fromI32(999) // Non-existent config

    let toggleEvent = createAutomationSwitchedEvent(configIndex, false)
    toggleEvent.address = contractAddress

    handleAutomationSwitched(toggleEvent)

    const toggleId = toggleEvent.transaction.hash
      .concatI32(toggleEvent.logIndex.toI32())
      .toHexString()
    assert.notInStore("AutomationToggle", toggleId)
  })
})

describe("handleSplitConfigDeleted", () => {
  test("handilng deletion config", () => {
    clearStore()

    const contractAddress = Address.fromString("0xa16081F360e3847006dB660bae1c6d1b2e17eC2A")
    const userAddress = Address.fromString("0xa9aaC8b17F7fb7dF0104ECd53F8b635b8052b97E")
    const configIndex = BigInt.fromI32(1)
    const tokenAddress = Address.fromString("0x000000000000000000000000000000000000dead")
    const recipients = [
      Address.fromString("0x0000000000000000000000000000000000000001"),
      Address.fromString("0x0000000000000000000000000000000000000002")
    ]
    const percentages = [BigInt.fromI32(5000), BigInt.fromI32(5000)]
    const minAmount = BigInt.fromString("1000000000000000000")

    const percentagesI32 = percentages.map<i32>((p) => p.toI32())

    mockGetSplitConfig(
      contractAddress,
      configIndex,
      tokenAddress,
      recipients,
      percentagesI32,
      minAmount,
      true
    )

    let createEvent = createSplitConfigCreatedEvent(userAddress, configIndex)
    createEvent.address = contractAddress
    handleSplitConfigCreated(createEvent)

    let deletionEvent = createSplitConfigDeletedEvent(configIndex)
    deletionEvent.address = contractAddress

    handleSplitConfigDeleted(deletionEvent)

    const configId = Bytes.fromBigInt(configIndex).toHexString()
    const deletionId = deletionEvent.transaction.hash
      .concatI32(deletionEvent.logIndex.toI32())
      .toHexString()

    assert.fieldEquals(
      "SplitConfigDeletion",
      deletionId,
      "configIndex",
      configIndex.toString()
    )
    assert.fieldEquals(
      "SplitConfigDeletion",
      deletionId,
      "recipientCount",
      "2"
    )

    assert.fieldEquals(
      "SplitConfigDeletion",
      deletionId,
      "deletedBy",
      deletionEvent.transaction.from.toHexString()
    )

    assert.fieldEquals(
      "SplitConfig",
      configId,
      "deleted",
      "true"
    )

    assert.fieldEquals(
      "User",
      userAddress.toHexString(),
      "activeConfigs",
      "0"
    )

    const globalId = Bytes.fromHexString("0x676c6f62616c").toHexString()
    assert.fieldEquals(
      "GlobalStats",
      globalId,
      "totalActiveConfigs",
      "0"
    )
    assert.fieldEquals(
      "GlobalStats",
      globalId,
      "totalDeletedConfigs",
      "1"
    )
  })
})

