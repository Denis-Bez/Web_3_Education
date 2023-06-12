//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract ExampleViewPure {

    uint public myStorageVariable;

    // View function
    function getMyStorageVariable() public view returns(uint) {
        return myStorageVariable;
    }

    // Pure function
    function getAddition(uint a, uint b) public pure returns(uint) {
        return a+b;
    }

    // Write function
    function setMyStorageVariable(uint _newVar) public returns(uint) {
        myStorageVariable = _newVar;
        return _newVar; // Bad idea
    }

}