// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21; // Accepts Solidity version 0.8.21 and above, but below 0.9.0

/*
Solidity Versioning:
1. ^0.8.21  -> any version from 0.8.21 up to (but not including) 0.9.0
2. >=0.8.21 <0.9.0 -> only versions in this range
*/

// This is a simple contract that stores different types of variables
contract SimpleStorage {

    /*
    Solidity Data Types Overview:
    1. bool       -> true or false
    2. uint       -> unsigned integer (only positive numbers, including zero)
    3. int        -> signed integer (positive and negative numbers)
    4. string     -> sequence of characters (text)
    5. address    -> stores Ethereum account or contract addresses
    6. bytes32    -> fixed-size byte array (32 bytes)
    */

    // Signed integer variable (can be negative or positive)
    int256 myNumber = -10;

}
