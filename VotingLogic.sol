// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;


contract voting
{
 address public administrator;
 bool VotingPermission;
 mapping( uint => uint) VoteCount;
 mapping(address => bool) hasVoted;
 constructor()
 {
    administrator = msg.sender;
    VotingPermission = true;
 }

 function vote(uint _CandidateID) public 
{
    require(_CandidateID == 1 || _CandidateID == 2);
    require(VotingPermission == true);
    require(hasVoted[msg.sender] == false);
    VoteCount[_CandidateID]++;
    hasVoted[msg.sender] = true;   
}
function getVotes() public view returns( uint, uint)
{
   return (VoteCount[1], VoteCount[2]);

}
function SetVotingStatus() public 
{

    require(msg.sender == administrator);
    if(VotingPermission == true)
    {
        VotingPermission = false;
    }
    else 
    {
        VotingPermission = true;
    }

}

}
