# KBS_CoreTeamSubmissions2

Implemented a smart contract to conduct a transparent voting process between two candidates.

Each Ethereum address is allowed to vote only once.

Voting Logic

Used a mapping(address => bool) to track whether an address has already voted.

Applied require() checks to prevent double voting.

Voting ON/OFF Control

Added a boolean flag (SetVotingStatus) to represent the current voting status.
