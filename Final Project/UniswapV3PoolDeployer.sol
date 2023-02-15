// Pool destroyer - final contract to explain

// SPDX-License-Identifier: BUSL-1.1 // for license again
pragma solidity =0.7.6; // for solidity compiler version

import './interfaces/IUniswapV3PoolDeployer.sol'; 

import './UniswapV3Pool.sol';
// import files that will the contract be inherited from

contract UniswapV3PoolDeployer is IUniswapV3PoolDeployer {
    struct Parameters {
	// structs are like records that on this scenario most are the address of the tokens and the corresponding fees and tick spacing.
	// user defined variables
        address factory;
        address token0; //possible trading between two different tokens
        address token1;
        uint24 fee; // cost of trading maybe like the gas of the contract
        int24 tickSpacing;
    }

    /// @inheritdoc IUniswapV3PoolDeployer
    Parameters public override parameters;

    /// @dev Deploys a pool with the given parameters by transiently setting the parameters storage slot and then
    /// clearing it after deploying the pool.
    /// @param factory The contract address of the Uniswap V3 factory
    /// @param token0 The first token of the pool by address sort order
    /// @param token1 The second token of the pool by address sort order
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @param tickSpacing The spacing between usable ticks

// using the struct above we will be using those variables for our function.   
 function deploy(
        address factory,
        address token0,
        address token1,
        uint24 fee,
        int24 tickSpacing
    ) internal returns (address pool) {
	//assigning the parameters to those variables and setting those same variables
        parameters = Parameters({factory: factory, token0: token0, token1: token1, fee: fee, tickSpacing: tickSpacing});

// encoding it to a hashvalue basically info converted then assign to the pool variable and is also getting the address of that information then deployed
        pool = address(new UniswapV3Pool{salt: keccak256(abi.encode(token0, token1, fee))}());
        delete parameters; /deleting this parameters to save gas and be reused
//explain the concept of gas wei gwei ether the converstion of ether then gas price and gas cost which you pay for by using ether. Ether is native cryptocurrency of etherium.
    }
}
