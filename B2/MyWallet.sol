// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract MyWallet{
    address public  owner;
    
    constructor(){
        owner = msg.sender;
    }
    
    function deposit() external payable {}

    function withdraw() external {
        require(msg.sender == owner);
        payable(msg.sender).transfer(address(this).balance);
    }

    function withdraw(uint value) external {
        require(msg.sender == owner && value <= address(this).balance);
        payable(msg.sender).transfer(value);
    }
}