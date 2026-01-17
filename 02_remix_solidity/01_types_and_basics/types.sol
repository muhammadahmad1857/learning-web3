// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21; // Accepts Solidity version 0.8.21 and above, but below 0.9.0

/*
Solidity Versioning:
1. ^0.8.21  -> any version from 0.8.21 up to (but not including) 0.9.0
2. >=0.8.21 <0.9.0 -> only versions in this range
*/

// This is a simple contract that stores different types of variables
contract SolidityTypes {

    /*
    Solidity Data Types Overview:
    1. bool       -> true or false
    2. uint       -> unsigned integer (only positive numbers, including zero)
    3. int        -> signed integer (positive and negative numbers)
    4. string     -> sequence of characters (text)
    5. address    -> stores Ethereum account or contract addresses
    6. bytes32    -> fixed-size byte array (32 bytes)
    */

    // Boolean variable (true or false)
    bool hasFavoriteNumber = true;

    // Unsigned integer variable (positive whole numbers)
    uint256 favoriteNumber = 15;

    // Signed integer variable (can be negative or positive)
    int256 myNumber = -10;

    // String variable (text)
    string myName = "Ahmad";

    // Address variable (Ethereum account or contract)
    address myAddress = 0x70997970C51812dc3A010C7d01b50e0d17dc79C8;

    // Bytes32 variable (32 bytes of data, often used for hashes)
    bytes32 myHash = "cat"; // Note: This is just 3 bytes. Solidity will pad it to 32 bytes.
}
