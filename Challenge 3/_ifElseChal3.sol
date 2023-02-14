// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IfElse {
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) public pure returns (uint) {
         if (_x < 10) {
             return 1;
         }
         return 2;

        // from what can i understand the last return statement doesn't reach is because the
        // first and second conditions were accepted and making the last condition of the 
        // return statement dead code or unreachable because it's not run by the contract
        // the first condition if the user enters a number less than 10 it will print out 1
        // if it exceeed 10 the program will print out 2
        // making the last return condition unfulfilled and not run by the program

        
        // shorthand way to write if / else statement
        //the "?" operator is called the ternary operator
        
        return _x < 10 ? 1 : 2;
    }
}
