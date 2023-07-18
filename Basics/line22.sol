// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Labrary in Solidity

// A library is a collection of functions and data types that can be used by other contracts. It is similar to a contract but it cannot have a constructor and it cannot receive Ether. It is useful when you want to create a set of functions that can be used by multiple contracts.
// A library is created using the library keyword. The functions inside a library are not executed in the context of a contract. They are executed independently and the data is not permanently stored in the contract. This means that the functions cannot modify the state of the contract.

pragma solidity >=0.7.0;

library hashfunctions {
    function generatePass(string memory _pass) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_pass));
    }
    
    function generatePass2(string memory _pass) public pure returns(bytes32) {
        return sha256(abi.encodePacked(_pass));
    }
    
    function generatePass3(string memory _pass) public pure returns(bytes32) {
        return ripemd160(abi.encodePacked(_pass));
    }
}