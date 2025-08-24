// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


import "forge-std/Test.sol";
import "../src/WTanToken.sol";

contract WTanTokenTest is Test {
    WTanToken public token;
    address alice = address(0x1);

    function setUp() public{
        token = new WTanToken(1000);
    }

    function testSupply() view public{
        assertEq(token.totalSupply(), 1000);
    }

      function testMint() public {
        token.mint(alice, 50);
        assertEq(token.balanceOf(alice), 50);
    }

       function testBurn() public {
        token.mint(alice, 50);
        assertEq(token.balanceOf(alice), 50);
        token.burn(alice,30);
        assertEq(token.balanceOf(alice), 20);
    }
}