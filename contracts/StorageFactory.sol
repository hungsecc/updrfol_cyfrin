// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint _simpleStorageIndex, uint _simpleStorageNumber) public {
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint _simpleStorageIndex) public view returns(uint) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}