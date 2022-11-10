//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract MessengeboardPaywall {
    string public message;
    address payable deployeAddress;

    constructor() {
        message = "Hello World";
        deployeAddress = payable(msg.sender);
    }

    function setMessage(string memory newMessage) public payable {
        if (msg.value > 1 ether) {
            message = newMessage;
            deployeAddress.transfer(msg.value);
        } else {
            payable(msg.sender).transfer(msg.value);
            revert("Not enough donated.... Returning Funds");
        }
    }
}
