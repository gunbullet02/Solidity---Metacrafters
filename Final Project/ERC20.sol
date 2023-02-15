//ERC 20 


//  for creating custom token in etherium

// SPDX-License-Identifier: MIT // for license usually u put unlicensed if you are a beginner
pragma solidity ^0.8.17; // solidity version that will be used

import "./IERC20.sol";v // imports that are needed for the contract this could be a file as well in the file system due to .sol

// contract keyword

contract ERC20 is IERC20 { contract is based upon IERC20 as you can see in the imports and it is an oop method known as inheritance on which you can say this is like a child class of IERC20

    uint public totalSupply; //declaring a public variable for token
    mapping(address => uint) public balanceOf; // mapping is like hash table that stores key-value pairs - series of addresses stored that is associated with an uint the name is in the last part which is balanceOf

    mapping(address => mapping(address => uint)) public allowance; // giving permission to use your tokens also getting their address

    string public name = "Solidity by Example"; //Defining the name of the token
    string public symbol = "SOLBYEX"; //Defining the symbol token
    uint8 public decimals = 18; // assigning the decimal token

// transfer function that takes the address of the recipenet and amount 
    function transfer(address recipient, uint amount) external returns (bool) {
        balanceOf[msg.sender] -= amount; // the sender sends in nature it subtracts from the sender depending on the amount and is taken on the balance of the sender
        balanceOf[recipient] += amount; // the recepient receives the amount sent by the sender which is added to their balance

        emit Transfer(msg.sender, recipient, amount); // if the transaction is successful it returns true on both parties on the code it uses global variables like msg.sender which are special variables because it provides information about the blockchain and transactions 

        return true;
    }

// approve function that is like allowing someone else to spend using our account something like that it gets the address of the spender and the amount it also has an allowance which depends on the allowance declared before and is depending on the two parties involved the sender and the spender on the amount of the allowance. And then just confirms the transaction of the two which is the approval when successfully done it returns true.
    function approve(address spender, uint amount) external returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

// transfer function first it gets the needed addresses like sender, reciepient and the amount. The external here from what i understand are you can call outside the contract while internal does the opposite. After that the transaction between the two parties again to decide on the allowance then the balance of the sender amount is subtracted and that amount is sent to the recipient after the transaction is finished it returns true if it’s successfully done.

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool) {
        allowance[sender][msg.sender] -= amount;
        balanceOf[sender] -= amount;
        balanceOf[recipient] += amount;
        emit Transfer(sender, recipient, amount);
        return true;
    }

//for creating tokens it first gets the amount then external the one who is minting are added tokens to their account or balance then the total supply is added depending on the created tokens then confirming if the transaction is done.
    function mint(uint amount) external {
        balanceOf[msg.sender] += amount;
        totalSupply += amount;
        emit Transfer(address(0), msg.sender, amount);
    }

// does the opposite of mint which is removing or burning it first gets the amount that it wants to remove of course this gets subtracted to the balance of the user then reevauluating the total supply then after that confirming the transaction.
    function burn(uint amount) external {
        balanceOf[msg.sender] -= amount;
        totalSupply -= amount;
        emit Transfer(msg.sender, address(0), amount);
    }
}
