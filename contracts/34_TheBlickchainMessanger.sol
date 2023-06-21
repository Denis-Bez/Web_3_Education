//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;


//+ Store string on the blockchain
//+ Readable for everyone
//+ Writable for person who deployed
//+ Shows how many times message was updated

contract TheBlockchainMessanger {

    uint public changeCounter;
    address public owner;
    string public theMessage;

    constructor() {
        owner = msg.sender;
    }

    function updateTheMessage(string memory _newMessage) public {
        if(msg.sender == owner) {
            theMessage = _newMessage;
            changeCounter++;
        }
    }
}