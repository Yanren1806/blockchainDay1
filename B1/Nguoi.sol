// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract Nguoi{
    string private hoten;
    string private gioitinh;
    function nhap(string memory _hoten, string memory _gioitinh) internal {
        hoten = _hoten;
        gioitinh = _gioitinh;
    }

    function xuat() internal view returns(string memory, string memory){
        return (hoten, gioitinh);
    }
}