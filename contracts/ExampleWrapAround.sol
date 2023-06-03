//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract ExampleWrapAround {

    uint256 public myUint; // 0 - (2*256) - 1

    uint8 public myUint8 = 250;

    function decreementUint() public {
        unchecked {       // Don't check variable size
            myUint--;
        }
    }

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function increementUint8() public {
        myUint8++;
    }

}