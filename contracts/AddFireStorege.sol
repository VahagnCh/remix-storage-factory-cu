// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24; // Solidity version

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    // + 5
    // Overrides
    // virtual override

    function store(uint256 _newnumber) public override {
        myFavoriteNumber = _newnumber + 5;
    }
}