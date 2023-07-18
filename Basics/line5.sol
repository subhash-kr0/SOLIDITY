// SPDX-License-Identifier: MIT

// Storage vs memory for solidity

//What is memory in Solidity?
// Memory is like RAM used to store short-lived data that spans around function calls.

// Variables declared in function calls, are stored in memory after function call execution starts and memory is removed once function call execution stops.

// There is no limit on the amount of memory storage as long as the blockchain node is available memory. It contains a byte array that can store up to 32 bytes of data.

// Function arguments of a function calls are stored in memory

// What is Storage in solidity?
// Storage is like database data stored in a blockchain node file system. It is persistent and has access to multiple executions of the same contract.

// the storage contains key and value pairs, each key and value pair stores 32 bytes of data.

// Global variables declared in the global scope of the contract are stored here And Also, Reference type local variables such as Struct, Array, and mapping type are stored in memory by default.


pragma solidity >=0.7.0;

contract functions {
    uint public val = 4; //state variables

    function add(string memory name) public pure returns(string  memory){
        return name;
    }

    function global() public view returns(uint){
        return block.timestamp;
    }
}