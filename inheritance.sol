// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Owner {
    address owner;
    modifier onlyOwner {
        require(msg.sender == owner); 
    _;}
}

contract Regisgter is Owner {
    mapping(address => bool) registeredAdress;
    uint price;

    constructor (uint initialPrice) {
        price = initialPrice;
    }

    function register () public payable {
        registeredAdress[msg.sender] = true;
    }

    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}