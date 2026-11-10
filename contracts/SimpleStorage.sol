// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 public favoriteNumber;

    struct Person {
        uint myFavoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping (string => uint) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(uint _favoriteNumber, string memory _name) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function showListPeople() public view returns (Person[] memory) {
        return listOfPeople;
    }
}