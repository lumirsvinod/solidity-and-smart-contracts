// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract VotingSystem{
    struct Proposal{
        uint id;
        string name;
        uint voteCount;
    }

    Proposal[] private voterNames;
    mapping (address => bool) hasVote;

    constructor(){
        voterNames.push(Proposal(0, "Eleven", 0));
        voterNames.push(Proposal(1, "Vecna", 0));
    }

    function listCandidates() public view returns (Proposal[] memory) {
        return voterNames;
    }

    modifier Checking(){
        address voter = msg.sender;
        require(!hasVote[voter], "You already voted");
        _;
    }
    function vote(uint _id) public Checking(){
        voterNames[_id].voteCount++;
        hasVote[msg.sender] = true;
    }


}
