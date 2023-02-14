//SPDX-License-Identifier:UNLICENSED - for licensing
pragma solidity ^0.8.17; // for compiler version

contract getEth{

    uint public Wei = 1 wei;
    uint public Ether = 1 ether;
    uint public Gwei = 1 gwei;


    function valueWei() public pure returns (bool){
        return 1 wei == 1;
    }

    function valueEther() public pure returns(bool){
        return 1 ether == 1e18 wei;
    }

    function valueGwei() public pure returns(bool){
        return 1 gwei == 1;
    }
 
}
