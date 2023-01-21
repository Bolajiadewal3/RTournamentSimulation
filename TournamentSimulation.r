"--------------------------------------------------------------------------------------- --------------------------------------------- Function:TournamentSimulation
Purpose:Simulate number of rounds, comprising tournament
Parameters:
numberOfPlayers:total number of players
Returns:List of the tournament(Tournament, Winner, Tournament Overview)
Declarations::
currentRound: round tournaments currently on totalNumOfGamesPlayed: total number of games played r:list of all tournaments rounds and their data
Game:dataframe representing Game Entity, valuetypes are provided as no games have been played yet
Tournament:dataframe representing Tournament Entity; column-names changed after creation
nog:number of games to be played in current round!!! = half the number of players to start, halves every round
totalNumOfRounds:number of rounds to be played - from FindTotalNumberOfRounds()
players:participants - from generatePlayers()
overallWinner:player not been eliminated by tournaments end - which() searches the {players} dataframe
Inside loop:
spans full number of rounds to be played
loop simulates required number of rounds to finish tournament
A single round is created and simulated via RoundSimulation() - its given the players, game dataframe, current round number and number of games to be played that round
number of players left to play {Tournament$PlayersLeft} halved as the round has been simulated {r} updated to include this finished round
number of games {nog} to be played for next round halved
{players} updated to reflect new records
14
20187281
total number of games played and tournaments record of games both have simulated rounds values appended
{currentRound} is incremented
Outside the loop:
overall winner is found and sent to overview
Reference:
3.5:list():<Matloff,2011> 3.6:data.frame$column:<Matloff,2011>
"
TournamentSimulation <- function(numberOfPlayers) {
currentRound <- 0 totalNumOfGamesPlayed <- 0 r <- NULL
Game <-data.frame(ID=integer(),PlayerAID=integer(),PlayerBID=integer(),WinnerID=integer(), Round = integer())
Tournament <- data.frame(1, 0, numberOfPlayers, NA) colnames(Tournament) <- c("ID", "GamesPlayed", "PlayersLeft", "WinnerID")
nog <- numberOfPlayers/2
TotalNumOfRounds <- FindTotalNumberOfRounds(numberOfPlayers)
players <- generatePlayers(numberOfPlayers)
print(Tournament) print(Game) print(players)
while(currentRound<TotalNumOfRounds){
oneRound <- RoundSimulation(players, Game, currentRound, nog, totalNumOfGamesPlayed) Tournament$PlayersLeft <- Tournament$PlayersLeft/2
r <- c(r, list(oneRound))
nog <- nog/2
players <- oneRound$players
totalNumOfGamesPlayed <- totalNumOfGamesPlayed + oneRound$gamesPlayedInRound Tournament$GamesPlayed <- Tournament$GamesPlayed + oneRound$gamesPlayedInRound currentRound <- currentRound+1
}
overallWinner <- oneRound$players[which(oneRound$players$Elim==FALSE),]
Tournament$WinnerID<- overallWinner$ID
return(list(tournament=r,winner=players[which(players$ID==overallWinner$ID),], tournamentStat = Tournament))
}
