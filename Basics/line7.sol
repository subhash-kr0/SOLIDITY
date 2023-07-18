// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

//if-else statment

pragma solidity >=0.7.0;

contract ifelse {
    uint public val = 4;
    uint public val2 = 3;
    uint public val3 = 2;
    uint public val4 = 1;
    
    function ifelse1() public view returns(uint){
        if(val>val2){
            return val;
        }
        else{
            return val2;
        }
    }
    
    function ifelse2() public view returns(uint){
        if(val>val2){
            return val;
        }
        else if(val2>val3){
            return val2;
        }
        else{
            return val3;
        }
    }
    
    function ifelse3() public view returns(uint){
        if(val>val2){
            return val;
        }
        if(val2>val3){
            return val2;
        }
        else{
            return val3;
        }
    }
    
    function ifelse4() public view returns(uint){
        if(val>val2){
            return val;
        }
        else if(val2>val3){
            return val2;
        }
        else if(val3>val4){
            return val3;
        }
        else{
            return val4;
        }
    }
    
    function ifelse5() public view returns(uint){
        if(val>val2){
            return val;
        }
        else if(val2>val3){
            return val2;
        }
        else if(val3>val4){
            return val3;
        }
        else if(val4>val){
            return val4;
        }
        else{
            return val;
        }
    }
    
    function ifelse6() public view returns(uint){
        if(val>val2){
            return val;
        }
        else if(val2>val3){
            return val2;
        }
        else if(val3>val4){
            return val3;
        }
        else if(val4>val){
            return val4;
        }
        else if(val>val3){
            return val;
        }
        else{
            return val3;
        }
    }
    
    function ifelse7() public view returns(uint){
        if(val>val2){
            return val;
        }
        else if(val2>val3){
            return val2;
        }
        else if(val3>val4){
            return val3;
        }
        else if(val4>val){
            return val;
        }
        else if(val>val3){
            return val;
        }
        else if(val3>val4){
            return val3;
        }
        else{
            return val4;
        }
    }
}