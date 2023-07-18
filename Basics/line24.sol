// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Abstract Contracts

// Abstract contracts are contracts that cannot be instantiated
// They are used as base contracts for other contracts
// They can contain both abstract and non-abstract functions
// Abstract functions are functions that do not have an implementation
// Abstract functions are marked with the keyword abstract
// Abstract functions do not contain a body


pragma solidity >=0.7.0;

abstract contract base {
    uint num;

    function call() public pure virtual returns(uint);

}

contract derived is base {
    function call() public pure override returns(uint) {
        return 1;
    }
}