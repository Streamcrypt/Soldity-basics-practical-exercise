//My solution

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract A{
    uint internal variable = 991;
    function viewe() external view returns(uint){
        return variable;
    }
    function modifyvariable(uint changevariable) external {
        variable = changevariable;
    }
}

//This was my solution when i submitted to chatgpt;it said that it was inefficient why? because you could just change variable's visibility to public this create an auto getter function that can be called after deploying so by that you would just cancel the function viewe and it would also reduce gas cost and more code = more bugs

//More optimized

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract A{
    uint public variable = 991;
    function modifyvariable(uint changevariable) external {
        variable = changevariable;
    }
}
  
