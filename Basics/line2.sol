// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

pragma solidity >=0.7.0;

contract functions {

    uint public val = 4;

    function add() public pure returns(uint) {
        return 2+3;

    }
}

// pure ->> state variable state ,edit
//viev ->> state variable view
//payable ->> state variable payable
// if state variable change then not need to mention pure or view