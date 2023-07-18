// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Solidity Struct

pragma solidity >=0.7.0;

contract structs {
    struct Person {
        uint id;
        string name;
        uint age;
        uint height;
        bool senior;
    }
    
    Person[] public people;
    
    function addPerson(string memory _name, uint _age, uint _height) public {
        people.push(Person(people.length, _name, _age, _height, _age>=65));
    }
    
    function getPerson(uint _id) public view returns(uint, string memory, uint, uint, bool){
        return (people[_id].id, people[_id].name, people[_id].age, people[_id].height, people[_id].senior);
    }
    
    function getPerson2(uint _id) public view returns(uint, string memory, uint, uint, bool){
        return (people[_id].id, people[_id].name, people[_id].age, people[_id].height, people[_id].senior);
    }
    
    function getPerson3(uint _id) public view returns(uint, string memory, uint, uint, bool){
        return (people[_id].id, people[_id].name, people[_id].age, people[_id].height, people[_id].senior);
    }
    
    function getPerson4(uint _id) public view returns(uint, string memory, uint, uint, bool){
        return (people[_id].id, people[_id].name, people[_id].age, people[_id].height, people[_id].senior);
    }
    
    function getPerson5(uint _id) public view returns(uint, string memory, uint, uint, bool){
        return (people[_id].id, people[_id].name, people[_id].age, people[_id].height, people[_id].senior);
    }
    
    function getPerson6(uint _id) public view returns(uint, string memory, uint, uint, bool){
        return (people[_id].id, people[_id].name, people[_id].age, people[_id].height, people[_id].senior);
    }
    
    function getPerson7(uint _id) public view returns(uint, string memory, uint, uint, bool){
        return (people[_id].id, people[_id].name, people[_id].age, people[_id].height, people[_id].senior);
    }


    function getPerson8(uint _id) public {
        Person memory newperson = student({
            id: people[_id].id,
            name: people[_id].name,
            age: people[_id].age,
            height: people[_id].height,
            senior: people[_id].senior
        });
        people.push(newperson);
    }

}