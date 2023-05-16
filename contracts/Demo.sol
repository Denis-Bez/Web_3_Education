// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyShop {
    
    // 0xd9145CCE52D386f254917e481eB44e9943F39138
    // address owner; // Variable is closed from external reading
    address public owner; // Variable is open from external reading
    mapping (address => uint) public payments;

    // Called when creating an object, when contract will placed to blockchain
    constructor() {
        owner = msg.sender; // Address sender's contract
    }

    // For get money
    function payForItem() public payable {
        payments[msg.sender] = msg.value;
    }

    // For withdrow money to my address from contract's balance
    function withdrowAll() public {
        address payable _to = payable(owner);
        address _thisContract = address(this);
        _to.transfer(_thisContract.balance);
    }
}