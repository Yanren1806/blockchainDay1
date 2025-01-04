// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract MyWallet{
    address public  owner;
    mapping (address => uint256) public balance;
    address[] users;
    
    constructor(){
        owner = msg.sender;
    }

    function deposit() external payable {
        if(balance[msg.sender] == 0 && msg.value > 0) users.push(msg.sender);
        balance[msg.sender] += msg.value;
    }

    function withdrawll() external {
        require(msg.sender == owner);
        payable(msg.sender).transfer(address(this).balance);
    }

    function withdrawa(uint value) external {
        require(msg.sender == owner && value <= address(this).balance);
        payable(msg.sender).transfer(value);
    }

    function showAllUser() public view returns(address[] memory){
        return users;
    }
}