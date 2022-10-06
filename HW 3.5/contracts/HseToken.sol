// SPDX-License-Identifier: Unlicense
// Declare the version of solidity to compile this contract. 
// This must match the version of solidity in your hardhat.config.js file
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// This function instantiates the contract and 
// classifies ERC20 for storage schema
contract HseToken is ERC20 {

   // Keep the (10**18) unchanged as it multiplies the number we want as our supply to have 18 decimal
    uint constant _initial_supply = 50 * (10**18);

    constructor() ERC20("HseToken", "HSE") {

        _mint(msg.sender, _initial_supply);
    }
}