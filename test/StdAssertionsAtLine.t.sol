// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {StdAssertionsAtLine} from "../src/StdAssertionsAtLine.sol";

contract StdAssertAtLineTest is Test {
    StdAssertionsAtLine atLine = new StdAssertionsAtLine();

    function setUp() public {
    }

    function test_bool() public {
        atLine.assertEq("line:14", uint256(2), uint256(4 / 2));

        //atLine.assertEq("line:16", true, false); // uncomment this to see example line number in logs
    }
}
