"----------------------------------------------------------------------------------------------------------------------------- ------- Function:RoundSimulation
Purpose:Simulate number of games, comprising a round
Parameters:
players:total number of players games:Dataframe of games
c:round number
r:number of games to be played this round
Returns:List of the round(Games played, Updated players dataframe, The number of games played this round)
Declarations::
p:players of the game
g:game dataframe
gamesPlayedThisRound:Counter = number of games played in round so far
Inside the loop:
spans full number of games to be played this round - while number of games played in round so far <
number of games to be played this round (starting from 0!)
A game is simulated via GameSimulation() and stored in {justPlayed} - function is given the players, number of games played and round number
number of games played in total and this round are incremented
The two players of the game have their records replaced by the player records from the simulated
game
ensures that the games played and record of the players are up to date
p[which(justPlayed$playerA$ID == p$ID), ] finds player stored in {p} whose ID = simulated game participant
The game dataframe adds the most recent game from {justPlayed}: justPlayed$game "
RoundSimulation <- function(players, games, c, r, totalNumOfGamesPlayed) {
p <- players
g <- games gamesPlayedThisRound <- 0 while(gamesPlayedThisRound < r){
justPlayed <- GameSimulation(p,totalNumOfGamesPlayed,c) gamesPlayedThisRound <- gamesPlayedThisRound + 1 totalNumOfGamesPlayed <- totalNumOfGamesPlayed + 1
p[which(justPlayed$playerA$ID == p$ID), ] <- justPlayed$playerA p[which(justPlayed$playerB$ID == p$ID), ] <- justPlayed$playerB
g <- rbind(g, justPlayed$game)
} return(list(games=g,players=p,gamesPlayedInRound=gamesPlayedThisRound)) }
