// SPDX-License-Identifier: MIT 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// Compatible with OpenZeppelin Contracts ^5.0.0 
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RcToken is ERC20 {
    constructor(address recipient) ERC20("RcTokens", "RTKs") {
        
        _mint(recipient, 10000000000000000 * 10 ** decimals());
    }
}
