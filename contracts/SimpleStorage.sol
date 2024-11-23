// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24; // Solidity version

contract SimpleStorage {
    // favoritNumber gets initialized to 0 if no value is assigned 
    uint256 myFavoriteNumber; // 0

    // uint256[] listOfFavoriteNumbers; 

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Dynamic array
    Person[] public listOfPeople;

    // Mapping to relate the names to the favorite numbers
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
        
    }
    // view disalow updating, pure disalow reading
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    // calldata(can not modify variable) and memory(can be changed) are temporaty variables, and storage if permanent data
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

contract SimpleStorage2 {}

contract SimpleStorage3 {}

contract SimpleStorage4 {}