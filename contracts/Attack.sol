// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./GoodFixed.sol";

contract Attack {
    GoodFixed good;

    constructor(address _good) {
        good = GoodFixed(_good);
    }

    function attack() public payable {
        good.setCurrentAuctionPrice{value: msg.value}();
    }
}