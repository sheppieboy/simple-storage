// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 public favouriteNumber;
    People public person = People({favouriteNumber: 2, name: "Luke"});

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }
}