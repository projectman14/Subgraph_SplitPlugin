import { createMockedFunction, mockFunction, newMockEvent } from "matchstick-as"
import { ethereum, BigInt, Address, Bytes } from "@graphprotocol/graph-ts"
import {
  AutomationSwitched,
  SplitConfigCreated,
  SplitConfigDeleted,
  SplitConfigFailed,
  SplitExecuted
} from "../generated/SplitPlugin/SplitPlugin"

export function createAutomationSwitchedEvent(
  configIndex: BigInt,
  currentState: boolean
): AutomationSwitched {
  let automationSwitchedEvent = changetype<AutomationSwitched>(newMockEvent())

  automationSwitchedEvent.parameters = new Array()

  automationSwitchedEvent.parameters.push(
    new ethereum.EventParam(
      "configIndex",
      ethereum.Value.fromUnsignedBigInt(configIndex)
    )
  )
  automationSwitchedEvent.parameters.push(
    new ethereum.EventParam(
      "currentState",
      ethereum.Value.fromBoolean(currentState)
    )
  )

  return automationSwitchedEvent
}

export function createSplitConfigCreatedEvent(
  user: Address,
  configIndex: BigInt
): SplitConfigCreated {
  let splitConfigCreatedEvent = changetype<SplitConfigCreated>(newMockEvent())

  splitConfigCreatedEvent.parameters = new Array()

  splitConfigCreatedEvent.parameters.push(
    new ethereum.EventParam("user", ethereum.Value.fromAddress(user))
  )
  splitConfigCreatedEvent.parameters.push(
    new ethereum.EventParam(
      "configIndex",
      ethereum.Value.fromUnsignedBigInt(configIndex)
    )
  )

  return splitConfigCreatedEvent
}

export function createSplitConfigDeletedEvent(
  configIndex: BigInt
): SplitConfigDeleted {
  let splitConfigDeletedEvent = changetype<SplitConfigDeleted>(newMockEvent())

  splitConfigDeletedEvent.parameters = new Array()

  splitConfigDeletedEvent.parameters.push(
    new ethereum.EventParam(
      "configIndex",
      ethereum.Value.fromUnsignedBigInt(configIndex)
    )
  )

  return splitConfigDeletedEvent
}

export function createSplitConfigFailedEvent(
  configIndex: BigInt,
  err: Bytes
): SplitConfigFailed {
  let splitConfigFailedEvent = changetype<SplitConfigFailed>(newMockEvent())

  splitConfigFailedEvent.parameters = new Array()

  splitConfigFailedEvent.parameters.push(
    new ethereum.EventParam(
      "configIndex",
      ethereum.Value.fromUnsignedBigInt(configIndex)
    )
  )
  splitConfigFailedEvent.parameters.push(
    new ethereum.EventParam("err", ethereum.Value.fromBytes(err))
  )

  return splitConfigFailedEvent
}

export function createSplitExecutedEvent(configIndex: BigInt): SplitExecuted {
  let splitExecutedEvent = changetype<SplitExecuted>(newMockEvent())

  splitExecutedEvent.parameters = new Array()

  splitExecutedEvent.parameters.push(
    new ethereum.EventParam(
      "configIndex",
      ethereum.Value.fromUnsignedBigInt(configIndex)
    )
  )

  return splitExecutedEvent
}

export function mockGetSplitConfig(
  contractAddress: Address,
  configIndex: BigInt,
  tokenAddress: Address,
  splitAddresses: Address[],
  percentages: i32[],
  minTokenAmount: BigInt,
  isSplitEnabled: boolean
): void {
  createMockedFunction(
    contractAddress,
    "getSplitConfig",
    "getSplitConfig(uint256):(address,address[],uint32[],uint256,bool)"
  )
    .withArgs([ethereum.Value.fromUnsignedBigInt(configIndex)])
    .returns([
      ethereum.Value.fromAddress(tokenAddress),
      ethereum.Value.fromAddressArray(splitAddresses),
      ethereum.Value.fromI32Array(percentages),
      ethereum.Value.fromUnsignedBigInt(minTokenAmount),
      ethereum.Value.fromBoolean(isSplitEnabled)
    ])
}

