// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.30;

contract A{
    uint public variable = 991; //variable get an auto getter function due to it visibility "public"
    function modifyvariable(uint changevariable) external { //parameter input prompt called "changevariable" and externally accessed after deploying
        variable = changevariable;  // variable is assigned to users input
    }
}
