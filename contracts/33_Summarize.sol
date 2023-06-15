//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract ExampleConstructor {

    // Decimal points
    uint public decimalpoints;
    
    // Subtraction (For example: 100 - 51.03)
    function setSubtraction(uint a, uint b) public pure returns(uint) {
        return a-b;
    }

}