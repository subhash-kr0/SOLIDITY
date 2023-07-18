// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Solidity Mapping

pragma solidity >=0.7.0;

contract mappings {
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    
    struct Book {
        string title;
        string author;
    }
    
    constructor() {
        names[1] = "John";
        names[2] = "Doe";
        names[3] = "Jane";
        names[4] = "Doe";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
    
    function getBook(uint _id) public view returns(string memory, string memory){
        return (books[_id].title, books[_id].author);
    }
    
    function getMyBook(address _address, uint _id) public view returns(string memory, string memory){
        return (myBooks[_address][_id].title, myBooks[_address][_id].author);
    }
    
    function getMyBook2(uint _id) public view returns(string memory, string memory){
        return (myBooks[msg.sender][_id].title, myBooks[msg.sender][_id].author);
    }
    
    function getMyBook3(uint _id) public view returns(string memory, string memory){
        return (myBooks[msg.sender][_id].title, myBooks[msg.sender][_id].author);
    }
    
    function getMyBook4(uint _id) public view returns(string memory, string memory){
        return (myBooks[msg.sender][_id].title, myBooks[msg.sender][_id].author);
    }
    
    function getMyBook5(uint _id) public view returns(string memory, string memory){
        return (myBooks[msg.sender][_id].title, myBooks[msg.sender][_id].author);
    }

}

contract mappings2 {
    mapping(address => uint) public balances;

    function addBalance(uint _amount) public {
        balances[msg.sender] += _amount;
    }

    function getBalance() public view returns(uint){
        return balances[msg.sender];
    }
}