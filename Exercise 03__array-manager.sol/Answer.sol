// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract A{
     uint[] public getnumberbyindex;
     function add(uint number) external {
        getnumberbyindex.push(number);
     }
     function length() external view returns(uint) {
        return getnumberbyindex.length;
     }
     function resetarray() external{
        delete getnumberbyindex;
     }
   }
