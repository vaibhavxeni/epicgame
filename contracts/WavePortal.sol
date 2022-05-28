// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 public totalWaves=0;
    address[] public contractAddress;
    constructor() {
        console.log("Learning To Code Web3");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function contractDeployed() public  {
      contractAddress.push(msg.sender);
      //contractAddress[totalWaves]=msg.sender;
      console.log("%s added to array!",contractAddress[totalWaves]);
    }


}