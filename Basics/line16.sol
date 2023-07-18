// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Solidity Error handling

pragma solidity >=0.7.0;

//Types
//1. Assert
//2. Require
//3. Revert


contract errorHandling {
    uint public val = 4; //state variable
    
    
    function get()  public view returns(uint){
        return val;
    }
    
    function set(uint _val) public {
        val = _val;
    }
    
    function set2(uint _val) public {
        assert(_val == 10);
        val = _val;
    }
    
    function set3(uint _val) public {
        require(_val == 10);
        val = _val;
    }
    
    //
    function set4(uint _val) public {
        if(_val == 10) {
            val = _val;
        }
    }
    
    //revert
    function set5(uint _val) public {
        if(_val == 10) {
            val = _val;
        } else {
            revert();
        }
    }

}


contract error {
    address public owner;
    uint public count;

    constructor() {
        owner = msg.sender;
    }

    //require
    function call() public  {
        count++;
        require(msg.sender == owner, 'Caller is not owner');
    }

    //assert
    function call2() public  {
        count++;
        assert(msg.sender == owner);
    }

    //revert
    function call3() public  {
        count++;
        if(msg.sender != owner) {
            revert('Caller is not call');
        }
    }

}