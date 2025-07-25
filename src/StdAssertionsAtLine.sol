// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13;

import {Vm} from "forge-std/Vm.sol";

contract StdAssertionsAtLine {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    function assertTrue(string memory lineNo, bool data) public pure virtual {
        vm.assertTrue(data, lineNo);
    }

    function assertFalse(string memory lineNo, bool data) public pure virtual {
        vm.assertFalse(data, lineNo);
    }

    function assertEq(string memory lineNo, bool left, bool right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, uint256 left, uint256 right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEqDecimal(string memory lineNo, uint256 left, uint256 right, uint256 decimals) public pure virtual {
        vm.assertEqDecimal(left, right, decimals, lineNo);
    }

    function assertEq(string memory lineNo, int256 left, int256 right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEqDecimal(string memory lineNo, int256 left, int256 right, uint256 decimals) public pure virtual {
        vm.assertEqDecimal(left, right, decimals, lineNo);
    }

    function assertEq(string memory lineNo, address left, address right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, bytes32 left, bytes32 right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq32(string memory lineNo, bytes32 left, bytes32 right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, string memory left, string memory right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, bytes memory left, bytes memory right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, bool[] memory left, bool[] memory right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, uint256[] memory left, uint256[] memory right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, int256[] memory left, int256[] memory right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, address[] memory left, address[] memory right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, bytes32[] memory left, bytes32[] memory right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, string[] memory left, string[] memory right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }

    function assertEq(string memory lineNo, bytes[] memory left, bytes[] memory right) public pure virtual {
        vm.assertEq(left, right, lineNo);
    }
}
