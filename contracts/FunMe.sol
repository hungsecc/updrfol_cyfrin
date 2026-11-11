// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FunMe{

    uint public  minimumUsd = 5;

    function fun() public payable {
        require(msg.value >=  minimumUsd, "Didn't send enough ETH");
    }

    function withdraw() public  {}


}