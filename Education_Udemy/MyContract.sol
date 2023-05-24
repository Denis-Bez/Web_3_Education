//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract MyContract {

    string public ourSrting = "Hello, Hell!";

    function updateOurString(string memory updateString) public {
        ourSrting = updateString;
    }

}