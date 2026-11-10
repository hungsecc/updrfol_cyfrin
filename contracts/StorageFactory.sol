// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public list_of_simple_storage_contracts;

    function createSimplestorageContract() public {
        SimpleStorage new_simple_storage_contract = new SimpleStorage();
        list_of_simple_storage_contracts.push(new_simple_storage_contract);
    }

    function sfStore(uint _simple_storage_index, uint _simple_storage_number) public {
        list_of_simple_storage_contracts[_simple_storage_index].store(_simple_storage_number);
    }

    function sfGet(uint _simple_storage_index) public view returns(uint) {
        return list_of_simple_storage_contracts[_simple_storage_index].retrieve();
    }
}