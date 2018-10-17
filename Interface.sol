contract IBallot is IVoteHistory, IParticipatable
{
	function DidVote(IPlayer player)               public returns(bool);
	function TryVote(IPlayer byWho, IPlayer toWho) public returns(bool);
	function GetWinners()                          public returns(IPlayer[] memory);
	function IsSoloWinder()                        public returns(bool);
	function IsZeroWinders()                       public returns(bool);
	function IsEveryVotableOnesVoted()             public returns(bool);
}

contract IVoteHistory
{
	function WhoDidThePlayerVote(IPlayer player) public  returns(IPlayer);
}