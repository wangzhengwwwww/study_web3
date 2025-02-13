// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.24 and less than 0.9.0
pragma solidity >=0.4.22 <0.9.0;

contract FirstApp {
    uint public count;

    function get() public view returns (uint){
        return count;
    }

    function inc() public{
        count ++;
    }

    function dec() public {
        count --;
    }
}
