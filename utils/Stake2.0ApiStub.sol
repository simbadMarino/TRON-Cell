// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

// Stub for TRON Stake 2.0 TVM built-in API functions.
// For IDE linting only. No operational logic here.

abstract contract TVM_Solidity_API {
    function freezebalancev2(uint amount, uint resourceType) internal virtual;

    function unfreezebalancev2(uint amount, uint resourceType) internal virtual;

    function cancelallunfreezev2() internal virtual;

    function withdrawexpireunfreeze() internal virtual returns (uint);

    function vote(
        address[] calldata srList,
        uint[] calldata tpList
    ) external virtual;

    function withdrawreward() external virtual returns (uint);

    function rewardBalance() external view virtual returns (uint);

    // From example: chain.* and target.* functions
    struct chain {
        uint totalNetLimit;
        uint totalNetWeight;
        uint totalEnergyCurrentLimit;
        uint totalEnergyWeight;
        uint unfreezeDelayDays;
    }

    // Example – you can adjust signatures:
    function availableUnfreezeV2Size(
        address target
    ) external view virtual returns (uint);

    function unfreezableBalanceV2(
        address target,
        uint resourceType
    ) external view virtual returns (uint);

    function expireUnfreezeBalanceV2(
        address target,
        uint timestamp
    ) external view virtual returns (uint);

    function delegatableResource(
        address target,
        uint resourceType
    ) external view virtual returns (uint);

    function resourceV2(
        address target,
        address from,
        uint resourceType
    ) external view virtual returns (uint);

    function checkUnDelegateResource(
        address target,
        uint amount,
        uint resourceType
    ) external view virtual returns (uint, uint, uint);

    function resourceUsage(
        address target,
        uint resourceType
    ) external view virtual returns (uint, uint);

    function totalResource(
        address target,
        uint resourceType
    ) external view virtual returns (uint);

    function totalDelegatedResource(
        address from,
        uint resourceType
    ) external view virtual returns (uint);

    function totalAcquiredResource(
        address target,
        uint resourceType
    ) external view virtual returns (uint);
}
