// SPDX-License-Identifier: MIT

//Operators in sollidity
//1. Arithmetic Operators
//2. Comparison Operators
//3. Logical Operators
//4. Assignment Operators
//5. Bitwise Operators
//6. Ternary Operators

pragma solidity >=0.7.0;

contract operators {
    //Arithmetic Operators
    uint public val = 4;
    uint public val2 = 3;
    uint public val3 = 2;
    uint public val4 = 1;

    function add() public view returns(uint){
        return val+val2;
    }

    function sub() public view returns(uint){
        return val-val2;
    }

    function mul() public view returns(uint){
        return val*val2;
    }

    function div() public view returns(uint){
        return val/val2;
    }

    function mod() public view returns(uint){
        return val%val2;
    }

    //Comparison Operators
    function equal() public view returns(bool){
        return val==val2;
    }

    function notEqual() public view returns(bool){
        return val!=val2;
    }

    function greaterThan() public view returns(bool){
        return val>val2;
    }

    function lessThan() public view returns(bool){
        return val<val2;
    }

    function greaterThanEqual() public view returns(bool){
        return val>=val2;
    }

    function lessThanEqual() public view returns(bool){
        return val<=val2;
    }

    //Logical Operators
    function and() public view returns(bool){
        return val==val2 && val3==val4;
    }

    function or() public view returns(bool){
        return val==val2 || val3==val4;
    }

    function not() public view returns(bool){
        return !(val==val2);
    }

    //Assignment Operators
    function assign() public pure returns(uint){
        uint a = 1;
        return a;
    }

    function addAssign() public pure returns(uint){
        uint a = 1;
        a+=1;
        return a;
    }

    function subAssign() public pure returns(uint){
        uint a = 1;
        a-=1;
        return a;
    }

    function mulAssign() public pure returns(uint){
        uint a = 1;
        a*=1;
        return a;
    }

    function divAssign() public pure returns(uint){
        uint a = 1;
        a/=1;
        return a;
    }

    function modAssign() public pur
    returns(uint){
        uint a = 1;
        a%=1;
        return a;
    }

    //Bitwise Operators
    function bitAnd() public pure returns(uint){
        uint a = 1;
        uint b = 2;
        return a&b;
    }

    function bitOr() public pure returns(uint){
        uint a = 1;
        uint b = 2;
        return a|b;
    }

    function bitXor() public pure returns(uint){
        uint a = 1;
        uint b = 2;
        return a^b;
    }

    function bitNot() public pure returns(uint){
        uint a = 1;
        return ~a;
    }

    function leftShift() public pure returns(uint){
        uint a = 1;
        return a<<1;
    }

    function rightShift() public pure returns(uint){
        uint a = 1;
        return a>>1;
    }

    //Ternary Operators
    function ternary() public pure returns(uint){
        uint a = 1;
        uint b = 2;
        return a>b ? a : b;
    }
}
