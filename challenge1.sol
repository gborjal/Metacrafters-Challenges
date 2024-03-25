pragma solidity >=0.7.0 <0.9.0; //solidity version
contract AdminAccessOnly {
    uint private adminCode;
    address public admin;

    constructor() {
        adminCode = 143;
        admin = msg.sender;
    }

    modifier IsAdmin() {
        require(msg.sender == admin, "Not an Admin.");
        _;
    }

    function getCode() public view IsAdmin returns (uint) {
        return adminCode;
    }
}