//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

error Unauthorized();

contract developerDonationFund {
    address payable private deployeeAddress;

    constructor() payable {
        deployeeAddress = payable(msg.sender);
    }

    function deposit() public payable {}

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdraw() public {
        if (msg.sender == deployeeAddress) {
            deployeeAddress.transfer(getContractBalance());
        } else {
            revert Unauthorized();
        }
    }

    receive() external payable {
        payable(msg.sender).transfer(msg.value);
        revert("Funds have been returned... Did you mean to use 'Deposit'?");
    }
}
