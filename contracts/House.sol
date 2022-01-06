// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract House is Ownable {

    address public habitants;

    // struct for rooms with attributes for rewards
    // can be nfts
    struct Room {
        uint room;
        uint256 yield;
    }

    // lets have 8x8 grids first
    uint public gridLength;
    uint public gridWidth; // % 8 to get offset
    mapping(uint => uint) public roomToGrid; //mapping to tell where are the rooms on the grids
    mapping(uint256 => uint) private habitantsToRooms; //mapping to tell which room is particular inhabitant at
    Room [] public roomList;

    constructor (address _habitants, uint _gridLength, uint _gridWidth){
        // todo: insert require for max grid dims
        habitants = _habitants;
        gridLength = _gridLength;
        gridWidth = _gridWidth;

        for (uint i; i<gridLength*gridWidth; i++){
            roomToGrid[i] = i;
            roomList[i] = Room(i,0);
        }
    }

    function shuffle() external view returns(Room[] memory){
        return roomList;
    }
    

}