// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

contract ElonNFT is ERC721URIStorage {

    //Counters.Counter private _tokenIds -- replaced with below
    uint private _tokenIds;

    constructor() ERC721("ElonMusk", "ELON") {}

    function mintNFT() public returns (uint256) {
        // _tokenIds.increment() -- replaced with below
        _tokenIds++;
        //uint256 newItemId = _tokenIds.current(); -- replaced with below
        uint newItemId = _tokenIds;
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, "https://moccasin-worrying-baboon-395.mypinata.cloud/ipfs/QmaNXLqdTaZ1BLBMU4jyug6UayKSXuCQUgGmmcDcfgf1Eh?_gl=1*tu5mb2*_ga*NTgyNDU1NDk3LjE3MDA4MTQwNTM.*_ga_5RMPXG14TE*MTcwMDgxNjY3My4yLjEuMTcwMDgxNzc2Ny42MC4wLjA.");
        console.log(
            "The NFT ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
        return newItemId;
    }
}
