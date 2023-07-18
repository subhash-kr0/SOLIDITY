// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Solidity Contructor

pragma solidity >=0.7.0;

contract constructors {
    uint public val = 4; //state variable
    
    constructor() {
        val = 5;
    }
    
    function get()  public view returns(uint){
        return val;
    }
}

contract Base {
    address public owner;
    uint public balance;

    constructor(uint _balance) {
        owner = msg.sender;
    }

}

contract Derived is Base(100) {
    
    constructor() {
    }
}

contract Derived2 is Base {
    
    constructor() Base(100) {
    }
}

