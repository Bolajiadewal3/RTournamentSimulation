"----------------------------------------------------------------------------------------------------------------------------- ------- Function:GameSimulation
Purpose:Simulate single game
Parameters:
players:dataframe of players
noOfGames:number of games played so far in WHOLE tournament cr:current round of the tournament
Returns: List of the game(Game itself, player A, player B)
Declarations::
playersOfCurrentGame: two players of current game - selected randomly from players which: have
not been eliminated & have played less games than possible IDsOfCurrentGame: The two IDs for the players in this game winner: winnersID
loser: losersID
Function:
Played value of two players incremented by 1: stops them from being re-entered into current round
players[IDsOfCurrentGame$ID,7] is GamesPlayed values of the two players, searched by their ID
Choice:A random coin flip of sorts winner - HEADS is 1, TAILS is 0
If HEADS:
A is winner
B is loser
B is eliminated
players[IDsOfCurrentGame[2,1],8] is their Eliminated boolean As wins incremented by 1
Bs losses incremented by 1
If TAILS:
B is winner
A is loser
A is eliminated
players[IDsOfCurrentGame[1,1],8] is their Eliminated boolean Bs wins incremented by 1
As losses incremented by 1
{singleGame} stores gameID - total number of games played plus one -, the two players IDs, game winner and the current round - actually cr+1 not cr
{Game} dataframe is updated by appending the {singleGame} "
GameSimulation <- function(players,noOfGames, cr) {
playersOfCurrentGame <- players[sample(which(players$GamesPlayed == cr & players$Elim==FALSE), 2, replace=FALSE),]
IDsOfCurrentGame <- playersOfCurrentGame["ID"] players[IDsOfCurrentGame$ID,7] <- players[IDsOfCurrentGame$ID,7]+1
17
20187281
winner<-NULL
loser<-NULL
if(rbinom(1,1,0.5) == 1){
winner <-IDsOfCurrentGame[1,] loser <-IDsOfCurrentGame[2,]
players[IDsOfCurrentGame[2,1],8] <- TRUE players[IDsOfCurrentGame[1,1],5] <- players[IDsOfCurrentGame[1,1],5]+1 players[IDsOfCurrentGame[2,1],6] <- players[IDsOfCurrentGame[2,1],6]+1
}else{
winner <-IDsOfCurrentGame[2,] loser <-IDsOfCurrentGame[1,]
players[IDsOfCurrentGame[1,1],8] <- TRUE players[IDsOfCurrentGame[2,1],5] <- players[IDsOfCurrentGame[2,1],5]+1 players[IDsOfCurrentGame[1,1],6] <- players[IDsOfCurrentGame[1,1],6]+1 }
singleGame <- c(noOfGames +1, IDsOfCurrentGame[1,], IDsOfCurrentGame[2,], winner, cr+1) Game[nrow(Game)+1,] <- singleGame
return(list(game=Game, playerA=players[IDsOfCurrentGame[1,1],], playerB=players[IDsOfCurrentGame[2,1],]))
}
