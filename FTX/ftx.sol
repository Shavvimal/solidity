//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract FTX {
    int256 public totalAlamedaCollateral;
    address payable ftx;

    constructor() {
        ftx = payable(msg.sender);
    }

    function depositUserFunds() payable public {
        totalAlamedaCollateral += int(msg.value);
        ftx.transfer(msg.value);
    }
}