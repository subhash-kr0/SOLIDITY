// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Function Modifiers

pragma solidity >=0.7.0;

contract FunctionModifiers {
    address public owner;
    uint public count;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    function increment() public onlyOwner {
        count++;
    }
}

contract modifiers {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function sendMoney() public onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }
}