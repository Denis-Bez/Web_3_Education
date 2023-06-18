//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;


//+ Store string on the blockchain
//+ Readable for everyone
//- Writable for person who deployed
//+ Shows how many times message was updated

contract TheBlockchainMessanger {

    string public message;
    uint public messageCount;
    address public addressCreate;

    function writeMessage(string memory _message) public {
        message = _message;
        messageCount++;
    }

}