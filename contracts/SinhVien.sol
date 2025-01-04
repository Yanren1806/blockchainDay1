// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

import "./Nguoi.sol";

contract SinhVien is Nguoi{
    string private tenlop;

    function nhap( string memory _hoten, string memory _gioitinh, string memory _tenlop) public {
        nhap(_hoten, _gioitinh);
        tenlop = _tenlop;
        }    

    function xuatthongtin() public view returns ( string memory , string memory , string memory ){
        (string memory hoten, string memory gioitinh) = xuat();
        return ( hoten, gioitinh, tenlop);
    }    
}