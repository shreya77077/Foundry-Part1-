//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    //SimpleStorage public simpleStorage;
    SimpleStorage[] public listOfSimpleStorageContract;

    // function createSimpleStorageContract()public {
    //    // simpleStorage = new SimpleStorage();
    //    SimpleStorage newimpleStorageContractVariable = new SimpleStorage();
    //    listOfSimpleStorageContract.push(newimpleStorageContractVariable);
    // }
    function createSimpleStorageContract()public {
        SimpleStorage newimpleStorageContractVariable = new SimpleStorage();
        listOfSimpleStorageContract.push(newimpleStorageContractVariable);
    }
    function sfStore(uint256 _simpleStorageIndex,uint256 _newSimpleStorageNumber)public{
        //address
        //ABI-Application Binary Interface
        // SimpleStorage mySimpleStorage = ListOfSimpleStorageContract[_simpleStorageIndex];
    //    mySimpleStorage.store(_newSimpleStorageNumber);
    SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        //SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        //return mySimpleStorage.retrieve();
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        return mySimpleStorage.retrieve();

    }
}
