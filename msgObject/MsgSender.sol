//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

// Important part of Ethereum blockchain developemnt is this
// This is where we diverge away from a classical centralised database

// This contract returns who interacted with the contract last
contract ExampleMsgSender {
    // public address
    address public someAddress;

    function updateSomeAddress() public {
        // Address of the person interacting with the contract
        someAddress = msg.sender;
    }
}
