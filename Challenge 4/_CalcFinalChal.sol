// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Calc{

    uint firstNum = 10;
    uint secondNum = 10;

    function add() public view returns(uint result){
        result = firstNum + secondNum;
        return result;
    }

    function subtract() public view returns(uint result){
        result = firstNum - secondNum;
        return result;
    }

    function multiply() public view returns(uint result){
        result = firstNum * secondNum;
        return result;
    }

    function divide() public view returns(uint result){
        result = firstNum / secondNum;
        return result;
    }


}
