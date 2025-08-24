// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TanToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("Tan Token", "TAN") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply);
    }


    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

        function burn(address to, uint256 amount) external onlyOwner {
        _burn(to, amount);
    }
}
