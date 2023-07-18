// SPDX-License-Identifier: MIT

// Solidity supports three variables

// 1. State variables
// 2. Local variables
// 3. Function parameters

// State variables are declared outside of functions, constructors, modifiers, and are not local to a function. They are part of the contract and are written to the contract storage. State variables are accessed using this.variableName.

// Local variables are declared inside functions, constructors, modifiers, and are not part of the contract. They are only visible in the scope they are declared in. Local variables are accessed using variableName.

// Function parameters are declared in the function signature. They are local variables that are assigned to the value passed in by the caller. Function parameters are accessed using variableName.

pragma solidity >=0.7.0;

contract functions {
    
    uint public val = 4;   // state variables

    function add() public pure returns(uint) {
         uint val2 = 3;  // Local variable
         return val2+3;

    }

    function global() public view returns(uint){
        return block.timestamp;
    }

    
}