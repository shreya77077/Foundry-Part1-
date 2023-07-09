//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage{
         uint256 public myFavoriteNumber; //0
         //string name;

         struct Person{
             uint256 favoriteNumber;
             string name;
         }

         Person[] public listofPeople;

         mapping(string => uint256) public nameToFavoriteNumber;


         function store(uint256 _favoriteNumber) public virtual{
             myFavoriteNumber = _favoriteNumber;
         }
         
         //view, pure
         function retrieve() public view returns(uint256){
             return myFavoriteNumber;
         }

         function addPerson(string  memory _name,uint256  _favoriteNumber) public{
             listofPeople.push(Person(_favoriteNumber,_name));
             nameToFavoriteNumber[_name] = _favoriteNumber;
         }
}
contract SimpleStorage2 {}

contract SimpleStorage3 {}