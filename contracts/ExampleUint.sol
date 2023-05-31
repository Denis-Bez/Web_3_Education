//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract ExampleUint {

    uint256 public myUint;

    uint8 public myUint8;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }
}