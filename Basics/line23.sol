// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// virtual and override

// virtual functions are functions that can be overridden in derived contracts
// override functions are functions that override a function in a base contract

pragma solidity >=0.7.0;

contract A {
    uint public x = 10;
    
  function getX()  virtual public view  returns(uint) {
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

contract D is B, C  {
    function getSum() public view returns(uint) {
        return x + y + z;
    }
}