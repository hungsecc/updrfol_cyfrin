// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 public myFavoriteNumber;

    struct Person {
        uint my_favorite_number;
        string name;
    }

    Person[] public list_of_people;

    mapping (string => uint) public name_to_favorite_number;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function add_person(uint _favorite_number, string memory _name) public {
        list_of_people.push(Person(_favorite_number, _name));
        name_to_favorite_number[_name] = _favorite_number;
    }

    function show_list_people() public view returns (Person[] memory) {
        return list_of_people;
    }
}