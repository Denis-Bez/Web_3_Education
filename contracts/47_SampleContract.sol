//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract SampleContract {

    string public MyString = "Hello, Hell!";

    function updateString(string memory _newString) public {
        MyString = _newString;
    }
}