// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Loops in solidity

// 1. for loop
// 2. while loop
// 3. do-while loop

pragma solidity >=0.7.0;

contract loops {
    uint public val = 4;
    uint public val2 = 3;
    uint public val3 = 2;
    uint public val4 = 1;
    
    function forloop() public view returns(int){
        for(int i=0;i<val;i++){
            return i;
        }
    }
    
    function whileloop() public view returns(uint){
        uint i=0;
        while(i<val){
            return i;
        }
    }
    
    function dowhileloop() public view returns(uint){
        uint i=0;
        do{
            return i;
        }while(i<val);
    }
}