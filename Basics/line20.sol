// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Inheritance in Solidity

// Inheritance is a way to create new contracts using existing contracts as building blocks. The new contract will inherit all the state variables and functions from the parent contract. The new contract can also add new state variables and functions.
// The new contract can override some of the functions of the parent contract. This is useful when you want to change the behavior of a function inherited from a parent contract.
// The new contract can also add new functions that are not present in the parent contract.

// import "hash.sol";

pragma solidity >=0.7.0;

contract A {
    uint public x = 10;
    
  function getX()  virtual public view returns(uint) {
        return x;
    }
}

contract B is A {
    uint public y = 20;
    
    function getY() public view returns(uint) {
        return y;
    }
}

contract C is A {
    uint public z = 30;
    
    function getZ() public view returns(uint) {
        return z;
    }
    
    function getX() public view override returns(uint) {
        return x + 1;
    }
}

contract D is B, C {
    function getSum() public view returns(uint) {
        return x + y + z;
    }
}


contract a {
    uint public num;

    constructor(uint _num){
        num = _num;
    }
}

contract b is a {
    constructor(uint _num) a(_num) {
    }

    function getNum() public view returns(uint) {
        return num;
    }
}