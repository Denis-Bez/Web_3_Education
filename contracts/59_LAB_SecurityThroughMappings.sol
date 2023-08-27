//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract MappingsStructExample {

    mapping(address => uint) public balanceReceived;

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function sendMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint amount) public {
        require(amount <= balanceReceived[msg.sender], "not enough funds");
        balanceReceived[msg.sender] -= amount;
        _to.transfer(amount);
    }

    function withdrawAllMoney(address payable _to) public {
        uint balanceToSend = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        _to.transfer(balanceToSend);
    }
}