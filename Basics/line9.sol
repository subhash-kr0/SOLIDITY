// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Solidity Arrays

// 1. Fixed Arrays
// 2. Dynamic Arrays

pragma solidity >=0.7.0;

contract arrays {
    uint[] public arr = [1,2,3,4,5];
    uint[] public arr2 = new uint[](7);
    
    function get() public view returns(uint){
        return arr[0];
    }
    
    function getLength() public view returns(uint){
        return arr.length;
    }
    
    function pushElement() public {
        arr.push(6);
    }
    
    function popElement() public {
        arr.pop();
    }
    
    function removeElement() public {
        delete arr[0];
    }
    
    function get2() public view returns(uint){
        return arr2[0];
    }
    
    function getLength2() public view returns(uint){
        return arr2.length;
    }
    
    function pushElement2() public {
        arr2.push(6);
    }
    
    function popElement2() public {
        arr2.pop();
    }
    
    function removeElement2() public {
        delete arr2[0];
    }

    function getArr() public view returns(uint[] memory) {
        return arr;
    }
}

