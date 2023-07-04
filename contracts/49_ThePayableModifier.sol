//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract SampleContract {

    string public MyString = "Hello, Hell";

    function updateString(string memory _newString) public payable {
        if(msg.value == 1 ether) {
            MyString = _newString; // Update "MyString" and send 1Ether to smart contract
        } else {
            payable(msg.sender).transfer(msg.value);    // Send back money from smart contract
        }
    }
}