// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Function visibility
//1.public
//2.private
//3.internal
//4.external

//1.public
//public functions can be called internally and externally

//2.private
//private functions can only be called internally

//3.internal
//internal functions can only be called internally and by contracts that inherit from the current contract

//4.external
//external functions can only be called externally

pragma solidity >=0.7.0;

contract A {
    uint public x = 10;
    
    function getX() public view returns(uint) {
        return x;
    }
    
    function setX(uint _x) public {
        x = _x;
    }
    
    function setXPrivate(uint _x) private {
        x = _x;
    }
    
    function setXInternal(uint _x) internal {
        x = _x;
    }
    
    function setXExternal(uint _x) external {
        x = _x;
    }
}
