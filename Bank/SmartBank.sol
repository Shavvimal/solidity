//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract SmartBank {
    mapping(address => uint256) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 withdrawalAmount) public {
        balances[msg.sender] -= withdrawalAmount;
        payable(msg.sender).transfer(withdrawalAmount);
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
