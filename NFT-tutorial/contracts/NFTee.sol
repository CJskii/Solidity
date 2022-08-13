// SPDX-License-Identifier: MIT
// Solidity version
pragma solidity ^0.8.0;

// Import the openzepplin contracts
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// NFTee is  ERC721 is an 'ERC721' standard contract
contract NFTee is ERC721 {
    constructor() ERC721("CJski NFT", "MONKE") {
        // mint 5 NFTs to myself
        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
        _mint(msg.sender, 3);
        _mint(msg.sender, 4);
        _mint(msg.sender, 5);
    }
}
