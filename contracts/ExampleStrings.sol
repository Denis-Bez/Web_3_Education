//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract ExampleStrings {

    string public myString = "Hello, Hell";
    bytes public myBytes = "Hello, Hell";

    function setMyString(string memory _myString) public  {
        myString = _myString;
    }

    function compareTwoString(string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    }

    function getBytesLength() public view returns(uint) {
        return myBytes.length;
    }

}