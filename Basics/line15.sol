// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Payable

pragma solidity >=0.7.0;

contract payableContract {
    function sendMoney() public payable {
        
    }
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}

contract payables {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function transferEth() payable public {
        owner.transfer(msg.value);
    }
}