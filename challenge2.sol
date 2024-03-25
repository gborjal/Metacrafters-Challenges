// SPDX-License-Identifier: MIT
pragma solidity 0.8.*;
contract Challenge2 {
    uint private value;


    function getValue() public view returns(uint) {
        return value;
    }


    function add(uint _a, uint _b) public pure returns(uint) {
        return _a + _b;
    }


    function deposit() public payable {
        value += msg.value;
    }
}

contract DerivedContract is Challenge2 {
    function getValueFromBase() public view returns(uint) {
        return getValue();
    }
    function addNumbers(uint _a, uint _b) public pure returns(uint) {
        return add(_a, _b);
    }

    function deposit() public payable override {
        super.deposit();
    }
}