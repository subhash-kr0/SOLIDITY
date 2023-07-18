// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// enum in solidity

pragma solidity >=0.7.0;

contract enums {
    enum Action {ADD, REMOVE, UPDATE}
    Action choice = Action.ADD;
    Action constant defaultChoice = Action.REMOVE;
    
    function getChoice() public view returns(Action){
        return choice;
    }
    
    function getDefaultChoice() public pure returns(uint){
        return uint(defaultChoice);
    }
    
    function setChoice(Action _choice) public {
        choice = _choice;
    }
    
    function remove() public {
        choice = Action.REMOVE;
    }
    
    function add() public {
        choice = Action.ADD;
    }
    
    function update() public {
        choice = Action.UPDATE;
    }
}

contract enums2 {
    enum size{SMALL, MEDIUM, LARGE}
    size public choice = size.MEDIUM;

    function setSmall() public {
        choice = size.SMALL;
    }

    function setMedium() public {
        choice = size.MEDIUM;
    }

    function setLarge() public {
        choice = size.LARGE;
    }

}