pragma solidity 0.8.17;

contract Messenger {
    string public message;
    address public deployeAddress;
    int256 public updated;

    constructor() {
        message = "Hello World";
        deployeAddress = msg.sender;
    }

    function setMessage(string memory newMessage) public {
        if (msg.sender == deployeAddress) {
            message = newMessage;
            updated++;
        } else {
            revert("You are not the deployer");
        }
    }
}
