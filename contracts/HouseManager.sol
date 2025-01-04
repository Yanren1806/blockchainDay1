// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract HouseManager {
        struct House{
        uint id;
        string house_address;
        address owner;
        }

    House[] public houses;
    mapping(uint => address) owners;

    function addhouse( string memory _address) public {
        uint id = houses.length;

        houses.push(House( id, _address, msg.sender));
        owners[id] = msg.sender;
    }

    function delHouse(uint id) public {
        require(msg.sender == owners[id], "ban khong phai chu nha");

        delete houses[id];
        owners[id] = address(0);
    }

    function updateHouse(uint id, string memory _address) public {
        require(msg.sender == owners[id], "ban khong phai chu nha");

        houses[id].house_address = _address;
    }
}
