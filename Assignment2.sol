// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafeFundManager {
    uint256 private accumulatedFunds;

    function addFunds(uint256 amount) public {
        // Use require to check a condition and revert if it's false
        require(amount > 0, "Amount must be greater than zero");

        // Use assert to check a condition that should never be false
        assert(accumulatedFunds + amount > accumulatedFunds);

        // Update the accumulated funds
        accumulatedFunds += amount;
        
    }

    function removeFunds(uint256 amount) public {
        // Use require to check a condition and revert if it's false
        require(amount > 0, "Amount must be greater than zero");

        // Use revert to unconditionally revert with a custom error message
        if (amount > accumulatedFunds) {
            revert("Insufficient funds for removal");
        }

        // Update the accumulated funds
        accumulatedFunds -= amount;
    }

    function getFunds() public view returns (uint256) {
        return accumulatedFunds;
    }
}
