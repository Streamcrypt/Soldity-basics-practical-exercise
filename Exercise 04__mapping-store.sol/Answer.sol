// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ReturnArray {
    mapping(address => uint) public balances;
    function addakeyvalue(uint balance , address Myaddress) external{
        balances[Myaddress] = balance;
    }
    function decreasebalance(address Myaddress , uint value) external{
        balances[Myaddress] -= value;
    }
    function resetkey(address myaddresse) external {
        balances[myaddresse] = 0;
    }
    }
   
  
