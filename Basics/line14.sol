// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Solidity Events

pragma solidity >=0.7.0;    

contract events {
    uint public val = 4; //state variable
    
    event ValueChanged(uint _val);
    
    function set(uint _val) public {
        val = _val;
        emit ValueChanged(_val);
    }
}

contract events2 {
    event transfer(address _from, address _to, uint _amount);
    
    function send(address _to, uint _amount) public {
        emit transfer(msg.sender, _to, _amount);
    }
}

//indexed
contract events3 {
    event transfer(address indexed _from, address indexed _to, uint _amount);
    
    function send(address _to, uint _amount) public {
        emit transfer(msg.sender, _to, _amount);
    }
}