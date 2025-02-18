---
title: AddressUpdater
---

<!-- This is an autogenerated file. Do not edit! -->

# `AddressUpdater` { #ct_addressupdater }

<div class="api-node-source" markdown>
[Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol) | Inherits from [IIAddressUpdater](./IIAddressUpdater.md), [Governed](./Governed.md)
</div>

<div class="api-node-internal" markdown>

Keeps track of the current address for all unique and special platform contracts.

This contract keeps a list of addresses that gets updated by [`governance`](#fn_governance_5aa6e675) every time
any of the tracked contracts is redeployed.
This list is then used by the [`FlareContractRegistry`](./FlareContractRegistry.md), and also by [`AddressUpdatable`](./AddressUpdatable.md)
to inform all dependent contracts of any address change.

</div>

<div class="api-node-type" markdown>

## Functions

<div class="api-node" markdown>

### `addOrUpdateContractNamesAndAddresses` { #fn_addorupdatecontractnamesandaddresses_8246e467 }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function addOrUpdateContractNamesAndAddresses(
    string[] _contractNames,
    address[] _contractAddresses
) external;
```

Add or [`update`](#fn_update_9933dba6) contract names and addresses that are later used in [`updateContractAddresses`](#fn_updatecontractaddresses_1b0e2960) calls.

Can only be called by [`governance`](#fn_governance_5aa6e675).

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_contractNames` | `string[]` | Contracts names. |
| `_contractAddresses` | `address[]` | Addresses of corresponding contracts names. |

</div>
</div>

<div class="api-node" markdown>

### `cancelGovernanceCall` { #fn_cancelgovernancecall_67fc4029 }

<div class="api-node-source" markdown>
Defined in `GovernedBase` ([Docs](./GovernedBase.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/governance/implementation/GovernedBase.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function cancelGovernanceCall(
    bytes4 _selector
) external;
```

Cancel a timelocked [`governance`](#fn_governance_5aa6e675) call before it has been executed.

Only [`governance`](#fn_governance_5aa6e675) can call this method.

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_selector` | `bytes4` | The method selector. |

</div>
</div>

<div class="api-node" markdown>

### `constructor` { #fn_constructor_undefined }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
constructor(
    address _governance
) public;
```

</div>
</div>

<div class="api-node" markdown>

### `constructor` { #fn_constructor_undefined }

<div class="api-node-source" markdown>
Defined in `Governed` ([Docs](./Governed.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/governance/implementation/Governed.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
constructor(
    address _governance
) public;
```

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_governance` | `address` | Governance contract. Must not be zero. |

</div>
</div>

<div class="api-node" markdown>

### `executeGovernanceCall` { #fn_executegovernancecall_5ff27079 }

<div class="api-node-source" markdown>
Defined in `GovernedBase` ([Docs](./GovernedBase.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/governance/implementation/GovernedBase.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function executeGovernanceCall(
    bytes4 _selector
) external;
```

Execute the timelocked [`governance`](#fn_governance_5aa6e675) calls once the timelock period expires.

Only executor can call this method.

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_selector` | `bytes4` | The method selector (only one timelocked call per method is stored). |

</div>
</div>

<div class="api-node" markdown>

### `getContractAddress` { #fn_getcontractaddress_04433bbc }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function getContractAddress(
    string _name
) external view returns (
    address);
```

Returns contract address for the given name, which might be address(0).

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_name` | `string` | Name of the contract to query. |

| Returns | Type | Description |
| ------- | ---- | ----------- |
| [0] | `address` | Current address for the queried contract. |
</div>
</div>

<div class="api-node" markdown>

### `getContractAddressByHash` { #fn_getcontractaddressbyhash_159354a2 }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function getContractAddressByHash(
    bytes32 _nameHash
) external view returns (
    address);
```

Returns contract address for the given name hash, which might be address(0).

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_nameHash` | `bytes32` | Hash of the contract name: `keccak256(abi.encode(name))` |

| Returns | Type | Description |
| ------- | ---- | ----------- |
| [0] | `address` | Current address for the queried contract. |
</div>
</div>

<div class="api-node" markdown>

### `getContractAddresses` { #fn_getcontractaddresses_ee6f63c3 }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function getContractAddresses(
    string[] _names
) external view returns (
    address[]);
```

Returns contract addresses for the given names, which might be address(0).

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_names` | `string[]` | Names of the contracts to query. |

| Returns | Type | Description |
| ------- | ---- | ----------- |
| [0] | `address[]` | Current addresses for the queried contracts. |
</div>
</div>

<div class="api-node" markdown>

### `getContractAddressesByHash` { #fn_getcontractaddressesbyhash_5e11e2d1 }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function getContractAddressesByHash(
    bytes32[] _nameHashes
) external view returns (
    address[]);
```

Returns contract addresses for the given name hashes, which might be address(0).

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_nameHashes` | `bytes32[]` | Hashes of the contract names: `keccak256(abi.encode(name))` |

| Returns | Type | Description |
| ------- | ---- | ----------- |
| [0] | `address[]` | Current addresses for the queried contracts. |
</div>
</div>

<div class="api-node" markdown>

### `getContractNamesAndAddresses` { #fn_getcontractnamesandaddresses_2f26c5c3 }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function getContractNamesAndAddresses(
) external view returns (
    string[] _contractNames,
    address[] _contractAddresses);
```

Returns all contract names and corresponding addresses currently being tracked.

| Returns | Type | Description |
| ------- | ---- | ----------- |
| `_contractNames` | `string[]` | Array of contract names. |
| `_contractAddresses` | `address[]` | Array of contract addresses. |
</div>
</div>

<div class="api-node" markdown>

### `governance` { #fn_governance_5aa6e675 }

<div class="api-node-source" markdown>
Defined in `GovernedBase` ([Docs](./GovernedBase.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/governance/implementation/GovernedBase.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function governance(
) public view returns (
    address);
```

Returns the current effective [`governance`](#fn_governance_5aa6e675) address.

</div>
</div>

<div class="api-node" markdown>

### `removeContracts` { #fn_removecontracts_70d44f28 }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function removeContracts(
    string[] _contractNames
) external;
```

Remove contracts with given names.

Can only be called by [`governance`](#fn_governance_5aa6e675).

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_contractNames` | `string[]` | Contract names. |

</div>
</div>

<div class="api-node" markdown>

### `switchToProductionMode` { #fn_switchtoproductionmode_f5a98383 }

<div class="api-node-source" markdown>
Defined in `GovernedBase` ([Docs](./GovernedBase.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/governance/implementation/GovernedBase.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function switchToProductionMode(
) external;
```

Enter the production mode after all the initial [`governance`](#fn_governance_5aa6e675) settings have been set.
This enables timelocks and the [`governance`](#fn_governance_5aa6e675) can be obtained afterward by calling
[`governanceSettings`](#va_governancesettings).getGovernanceAddress().
Emits [`GovernedProductionModeEntered`](#ev_governedproductionmodeentered).

</div>
</div>

<div class="api-node" markdown>

### `update` { #fn_update_9933dba6 }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function update(
    string[] _contractNames,
    address[] _contractAddresses,
    contract IIAddressUpdatable[] _contractsToUpdate
) external;
```

Set or [`update`](#fn_update_9933dba6) contract names and addresses, and then apply changes to specific contracts.

This is a combination of [`addOrUpdateContractNamesAndAddresses`](#fn_addorupdatecontractnamesandaddresses_8246e467) and [`updateContractAddresses`](#fn_updatecontractaddresses_1b0e2960).
Can only be called by [`governance`](#fn_governance_5aa6e675).

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_contractNames` | `string[]` | Contracts names. |
| `_contractAddresses` | `address[]` | Addresses of corresponding contracts names. |
| `_contractsToUpdate` | `contract IIAddressUpdatable[]` | Contracts to be updated. |

</div>
</div>

<div class="api-node" markdown>

### `updateContractAddresses` { #fn_updatecontractaddresses_1b0e2960 }

<div class="api-node-source" markdown>
Defined in `AddressUpdater` ([Docs](./AddressUpdater.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/addressUpdater/implementation/AddressUpdater.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
function updateContractAddresses(
    contract IIAddressUpdatable[] _contractsToUpdate
) external;
```

Updates contract addresses on specific contracts.

Can only be called by [`governance`](#fn_governance_5aa6e675).

| Parameters | Type | Description |
| ---------- | ---- | ----------- |
| `_contractsToUpdate` | `contract IIAddressUpdatable[]` | Contracts to be updated, which must implement the [`IIAddressUpdatable`](./IIAddressUpdatable.md) interface. |

</div>
</div>

</div>

<div class="api-node-type" markdown>

## Variables

<div class="api-node" markdown>

### `governanceSettings` { #va_governancesettings }

<div class="api-node-source" markdown>
Defined in `GovernedBase` ([Docs](./GovernedBase.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/governance/implementation/GovernedBase.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
    contract IGovernanceSettings governanceSettings
```

Governance Settings.

</div>
</div>

<div class="api-node" markdown>

### `productionMode` { #va_productionmode }

<div class="api-node-source" markdown>
Defined in `GovernedBase` ([Docs](./GovernedBase.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/governance/implementation/GovernedBase.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
    bool productionMode
```

When true, [`governance`](#fn_governance_5aa6e675) is enabled and cannot be disabled. See [`switchToProductionMode`](#fn_switchtoproductionmode_f5a98383).

</div>
</div>

<div class="api-node" markdown>

### `timelockedCalls` { #va_timelockedcalls }

<div class="api-node-source" markdown>
Defined in `GovernedBase` ([Docs](./GovernedBase.md), [Source](https://gitlab.com/flarenetwork/flare-smart-contracts/-/tree/master/contracts/governance/implementation/GovernedBase.sol)).
</div>

<div class="api-node-internal" markdown>

```solidity
    mapping(bytes4 => struct GovernedBase.TimelockedCall) timelockedCalls
```

List of pending timelocked [`governance`](#fn_governance_5aa6e675) calls.

</div>
</div>

</div>

