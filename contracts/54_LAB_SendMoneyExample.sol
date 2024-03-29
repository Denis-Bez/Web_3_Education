//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

// - Send 1 ETH to smart contract (from deposit address)
// - See balance smart contract
// - Withdraw ETH that was be send to deposit address
// - Withdrow ETH to specific address

contract SendWithdrawMoney {

    // Sum all balance deposite
    uint public balanceReceived;
    function deposit() public payable {
        balanceReceived += msg.value;
    }

    // Current contract's balance
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    // Withdraw all Ether to current address
    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }

    // Withdraw all Ether to input address
    function withdrawToAddress(address payable to) public {
        to.transfer(getContractBalance());
    }

}