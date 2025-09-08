// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract A{
    address private owneraddress;
    event Received(address deployerowner , string message);
     constructor(){
          emit Received(msg.sender , "deployer address captured");
           owneraddress = msg.sender;
        
     }                                                 
     uint private myNumber = 2;
 
     function onlyOwnerChangeNumber(uint newNumber) external {
        require(owneraddress == msg.sender,"You are not the contract deployer");
        myNumber = newNumber;
 }
    function readnumber() external view returns(uint){
      require(owneraddress == msg.sender,"You are not the contract deployer");
        return(myNumber);
    }
    function transferOwnership(address newOwner) external{
      require(owneraddress == msg.sender,"You are not the contract deployer");
      owneraddress = newOwner;
    }
   }
