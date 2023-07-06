//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract SampleFallback {
    
    uint public lastValueSent;
    string public lastFunctionCalled;

    uint public myUint;

    function setMyUint(uint _myNewUint) public {
        myUint = _myNewUint;
    }

    // This function have only 2300 Gas. Can't receive data, only value
    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
    }

    fallback() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "fallback";
    }
}