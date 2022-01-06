// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract House is Ownable {

    address public habitants;

    // struct for rooms with attributes for rewards
    struct Room {
        uint256 room;
        uint256 yield;
    }

    // lets have 8x8 grids first
    uint256 gridLength;
    uint256 gridWidth; // % 8 to get offset
    mapping(uint256 => uint256) public roomLocation; //mapping to tell where are the rooms on the grids
    mapping(uint256 => uint256) private habitantsToRooms; //mapping to tell which room is particular inhabitant at

    constructor (address _habitants){
        habitants = _habitants;
    }
    

}