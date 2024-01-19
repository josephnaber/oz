// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/// @title A simple Greeter contract
/// @dev This contract is for creating a simple smart contract for learning purposes
contract Greeter {
    string private greeting;

    // Event declaration
    /// @notice Emitted when the greeting is updated
    /// @param newGreeting The new greeting message
    event GreetingUpdated(string newGreeting);

    /// @notice Constructor to create Greeter
    /// @dev Stores the provided greeting message
    /// @param _greeting The greeting message to be used in the contract
    constructor(string memory _greeting) {
        greeting = _greeting;
        emit GreetingUpdated(_greeting); // Emit the event in the constructor
    }

    /// @notice Returns the current greeting message
    /// @dev Retrieves the value of the private variable `greeting`
    /// @return The current greeting message
    function greet() external view returns (string memory) {
        return greeting;
    }

    /// @notice Sets the greeting message
    /// @dev Updates the value of the private variable `greeting`
    /// @param _greeting The new greeting message to be set
    function setGreeting(string memory _greeting) external {
        greeting = _greeting;
        emit GreetingUpdated(_greeting); // Emit the event when the greeting is updated
    }
}
