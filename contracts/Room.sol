// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Room is Ownable {

    // struct for rooms with attributes for rewards
    struct Room {
        int8 room;
        int yield;
    }

    // lets have 8x8 grids first
    int gridLength = 8;
    int gridWidth = 8;
    mapping(int8 => int8) public roomLocation; //mapping to tell where are the rooms on the grids
    

}