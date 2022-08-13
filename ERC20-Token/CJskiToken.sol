// SPDX-License-Identifier: MIT

//What version of Solidity do I want to use
pragma solidity ^0.8.0;

//import ERC20 Contract from OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

//contract X { ... }
contract CJskiToken is ERC20 {
    //  We also want to call the constructor present inside ERC20
    constructor(string memory _name, string memory _symbol) 
    ERC20(_name, _symbol){
        
        // Get some tokens for ourselves
        // msg.sender is the person deploying the contract
        _mint(msg.sender, 10000 * (10 ** 18)); // money works on 2^18 basis due to computer inaccuracy with floating points
                                            // to get 100 tokens we need to use 100 * (10 ** 18)
    }

        function mint() public {
        _mint(msg.sender, 1000 * (10 ** 18));
    }
}
