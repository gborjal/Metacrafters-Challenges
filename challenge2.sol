// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15; 

contract payableContractChallenge {
    uint private balance = 0;
    
    function add(uint _a, uint _b) internal pure returns(uint) {
        return _a + _b;
    }
    function getBal() internal view returns(uint) {
        return balance;
    }
    function depo() virtual public payable {
        balance += msg.value;
    }
    

}
contract DerivedContract is payableContractChallenge {
    function getBalFromParent() public view returns(uint) {
        return getBal();
    }
    function addNums(uint _a, uint _b) public pure returns(uint) {
        return add(_a, _b);
    }

    function depo() public payable override {
        super.depo();
    }
}