# ETH-AVAX
# Project on functions and errors in ETH+AVAX

# SafeFundManager Smart Contract

This smart contract is a basic example that demonstrates the use of `require()`, `assert()`, and `revert()` statements in Solidity. It includes simple functions to add and remove funds with validation checks.

## Functions

### addFunds

The `addFunds` function allows users to add funds to the contract. It includes the following checks:

- Uses `require()` to check if the amount is greater than zero.
- Uses `assert()` to ensure that adding the amount does not result in an overflow.

### removeFunds

The `removeFunds` function enables users to remove funds from the contract. It includes the following checks:

- Uses `require()` to check if the removal amount is greater than zero.
- Uses `revert()` to unconditionally revert the transaction if the removal amount exceeds the available funds.

### getFunds

The `getFunds` function allows users to view the total accumulated funds in the contract.

## Usage

1. Deploy the smart contract to a compatible Ethereum or Avalanche network, or use the Remix IDE.
2. Interact with the contract by calling the `addFunds`, `removeFunds`, and `getFunds` functions.

**Note:** Make sure to test the contract in a suitable development environment before deploying to a mainnet.

## License

This project is licensed under the MIT License.
