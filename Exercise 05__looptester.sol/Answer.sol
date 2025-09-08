// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ReturnArray {
    uint[] public numbers;
 

     function addnumbers(uint value) external{
        numbers.push(value);
     }
     function sumnumbers() external view returns(uint) {
       require(numbers.length > 0, "Array is empty");
       uint index = numbers[0];
       for(uint loopc = 1;loopc < numbers.length;loopc++){  
           index += numbers[loopc];  
       }
      return(index);
       }
     function resetarray() external{
        delete numbers;
     } 
     function viewallnumbers() external view returns(uint[] memory){
        return numbers;
     }
    function largestnumber() external view returns(uint){
        require(numbers.length>0,"Array is empty");
        uint largenumber = numbers[0];
        for(uint x = 0;x < numbers.length;x++){  
           if(numbers[x] > largenumber){
                 largenumber = numbers[x];
           }  
        }                                
         return(largenumber);       
    }
    function smallnumbers() public view returns(uint){
        require(numbers.length>0,"Array is empty");
        uint smallnumber = numbers[0];
        for(uint x = 0;x < numbers.length;x++){  
           if(numbers[x] < smallnumber){
                 smallnumber = numbers[x];
           }
        }   
          return(smallnumber);    

    }
    function average() public view returns(uint){
       require(numbers.length > 0, "Array is empty");
       uint index = numbers[0];
       uint d = 0;
       for(uint loopc = 1;loopc < numbers.length;loopc++){  
           index += numbers[loopc];
       }
        d = index / numbers.length;
        return d;
       
       
    }

       
    }
