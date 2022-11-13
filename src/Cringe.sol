// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Cringe is ERC20 {
    address public admin;
    constructor() ERC20('Cringe', 'CRG') {
        admin = msg.sender;
    }

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }
}
