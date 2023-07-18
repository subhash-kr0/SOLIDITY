// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// cryptographic functions

//solidity provides the following cryptographic function

//1. keccak256
//2. sha256
//3. ripemd160
//4. ecrecover

//keccak256
//keccak256 is a cryptographic hash function that takes in an arbitrary number of bytes and returns a 256-bit hash value

//sha256
//sha256 is a cryptographic hash function that takes in an arbitrary number of bytes and returns a 256-bit hash value

//ripemd160
//ripemd160 is a cryptographic hash function that takes in an arbitrary number of bytes and returns a 160-bit hash value

//ecrecover
//ecrecover is a function that takes in a message hash, a signature and a recovery id and returns the address of the account that signed the message

pragma solidity >=0.7.0;

contract hashfunctions {
    bytes32 public password;

    function generatePass(string memory _pass) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_pass));
    }

    function sendMoney(string memory _pass) public view {
        require(keccak256(abi.encodePacked(_pass)) == password, "Wrong password");
    }
}

contract hashfunctions2 {

    function generatePass(string memory _pass) public pure returns(bytes32) {
        return sha256(abi.encode(_pass));
    }

    function generatePass2(string memory _pass) public pure returns(bytes32) {
        return ripemd160(abi.encodePacked(_pass));
    }
}