//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage{
    bool mysol = true;
    string msol = "cat";
    uint myol = 90;
    int mol = -90;
    bytes foo = "nue";

    uint public favnumber;
  //  People public person = People({fav: 2,name: 'patrick'});
  //  People public person1 = People({fav: 3,name: 'chad'});
  //  People public person2 = People({fav: 7,name: 'Allison'});

    struct People{
        uint fav;
        string name;
    }

    //null array are dynamic meaning they can can increased or decreased but if i give a size
    //eg. People[3] then it becomes static
    People[] public people;

    function store(uint _favnumber) public {
        favnumber = _favnumber;
    }

    //view and pure functions doesn't need gas to run. They disallow modification of states
    function retrieve() public view returns(uint){
        return favnumber;
    }

    function addPerson(string memory _name, uint _fav) public{
        People memory newperson = People({name: _name, fav: _fav});
        people.push(newperson);
        newnamenum[_name] = _fav;
    }

    mapping(string => uint) public newnamenum;
}

//* calldata is temporary variable that can't be modified
//* memory is temporary variable that can be modified
//* struct, mapping, array and string need to be given memory or calldata as keyword 
//  while adding them as parameter in functions.
//* storage is a permanent variable that can be modified
