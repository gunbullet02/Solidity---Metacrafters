//SPDX-License-Identifier:UNLICENSED - for licensing

//Tell the Solidity compiler what version to use
pragma solidity ^0.4.8;

//Declares a new contract


// uses the keyword contract to create contract

contract SimpleStorage {
    //Storage. Persists in between transactions
    uint x;
    
    // declares a state variable note uint stands for unsigned integer which is commonly used in solidity which we use when we don't need the number to negative
by using uint we don't have to worry possiblity of the number being a negative number. So if you need both positive and negative you should use int if not use
uint.

  
    //Allows the unsigned integer stored to be changed
   // setter function to initialize or assign the variable

    //Allows the unsigned integer stored to be changed
    function set(uint newValue) {
        x = newValue;
    //assigning or using the state variable and giving it to whatever newValue
    // Also explain the three differences of variables state,local,global
    // state is permanently stored in a contract storage while local is only used on the declared function while global are special variables that gives 
information about the blockchain.
    }
    
    // getter function to return the value of the integer or x
   
    //Returns the currently stored unsigned integer
    function get() returns (uint) {
        return x;
    }
}
