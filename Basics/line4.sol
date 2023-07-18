// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

//Solidity Variable Scopes
//1.public
//2.private
//3.internal

pragma solidity >=0.7.0;

contract varscope {
    uint public val = 4; //state variable
    
    function get()  public view returns(uint){
        return val;
    }
}

contract varscope2 {
    varscope waste = new varscope();

    function get2() public view returns(uint){
        return waste.val();
    }
}