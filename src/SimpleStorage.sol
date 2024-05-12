// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleStorage{
    uint public thala=7;


    uint256 public fav; //=0
   

    function anyVar() public pure returns (uint256){
        return 7;
    }
     function rtr()public view returns (uint256){
        return fav;
    }

    uint256 [] public listOfNum;
    
    //structure

    struct Person{
        uint256 fn;
        string name;
    }
 
    Person [] public ListOfPerson; //dynamic array
    // Person [5] public ListOfPerson; //static array
    function addPerson(uint _num,string memory _name) public{
        ListOfPerson.push(Person(_num,_name));
    }

    //EVM can store and access data in 3 places:
    //calldata, memory, storage

    //calldata,memory -> temporary variable                     storage- permanently stored variable - can be modified

    //we can change value in memory but not in calldata
    function abc(string memory _name) pure public {
        _name="Ankit";
    }

    // function abcd(string calldata _name) pure public {
    //     _name="Ankit";
    // }

    //mapping
    mapping(string=>uint256) public nameToNumber;
    function fn(string memory _name,uint256 num) public {
        nameToNumber[_name]=num;
    }



}
