//SPDX-License-Identifier:UNLICENSED - for licensing
pragma solidity ^0.8.17; // for compiler version

contract variableExample{

    // challenge 1

    string name = "john";
    uint public age;
    address public addNum;
    bool public inSchool;
    
    function setAge() public view returns(uint){
        return age;
    }
    
    function getAge(uint _age) public{
        age = _age;
    }

    function getName(string memory _name) public{ 
        name = _name;
    }

    function setName() public returns(string memory)
    {
        return name;
    }

    function getSchool(bool _school) public{ 
        inSchool = _school;
    }

    function setSchool() public returns(bool)
    {
        return inSchool;
    }

    function setAddress() public view returns(address){
        return addNum;
    }
    
    function getAddress(address _address) public{
        addNum = _address;
    }

}
