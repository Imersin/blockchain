// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5-^0.8.10;

import "@openzeppelin/contracts@4.8.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.8.0/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts@4.8.0/access/Ownable.sol";
import "@openzeppelin/contracts@4.8.0/utils/Counters.sol";

contract TAZAMAT is ERC721, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    mapping(address => uint256) private _balances;
    uint256 private _totalSupply;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("TAZAMAT", "TAZ") {}

    function safeMint(address to, string memory uri) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }

    function balanceOfCringe(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    function transferCringe(address to, uint256 amount) public virtual returns (bool) {
        address owner = _msgSender();
        _transferCringe(owner, to, amount);
        return true;
    }

    function _transferCringe(
        address from,
        address to,
        uint256 amount
    ) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");


        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);
    }

    function mintCringe(address account, uint256 amount) public virtual {
        require(account != address(0), "ERC20: mint to the zero address");
        _totalSupply += amount;
        unchecked {
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function EzBuy(address to, uint256 tokenId) public {
        _transferCringe(to, 0x961E35CA2B6Bd0766d2B1caCEebEC123d96b80f8, 500);
        _transfer(0x961E35CA2B6Bd0766d2B1caCEebEC123d96b80f8, to, tokenId);
    }

    function EzSell(address from, uint256 tokenId) public {
        _transferCringe(0x961E35CA2B6Bd0766d2B1caCEebEC123d96b80f8, from, 500);
        _transfer(from, 0x961E35CA2B6Bd0766d2B1caCEebEC123d96b80f8, tokenId);
    }

    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }
}
