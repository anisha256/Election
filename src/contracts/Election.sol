pragma solidity >=0.5.16 <0.6.0;

contract Election {
  
  struct Candidate{
      string name;
      uint voteCount;

  }

  struct Voter{
      bool authorized;
      bool voted;
      uint vote;
  }
  address public owner; 
  string public electionName;

  mapping(address => Voter)public voters;
  Candidate[] public candidates;
  uint public totalVotes;

  function ElectionCons(string memory _name) public {
      owner = msg.sender;
      electionName = _name;
  }
       string public name ="hello everyone";

}
