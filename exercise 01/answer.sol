// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract A{
    uint public variable = 991;
    function modifyvariable(uint changevariable) external {
        variable = changevariable;
    }
}
