"----------------------------------------------------------------------------------------------------------------------------- ------- Function:tourney
Purpose:tournament simulation
Parameters:
n: total number of players
Returns: List of the tournament(All games, All players, winner)
Declarations::
x: tournament simulation
AllGamesPlayedInTournament: Dataframe of all games played in tournament AllPlayersInTournament: Dataframe of all players in tournament
Inside loop:
spans number of games played
Loop merges all games played for each round together into one dataframe
Outside loop:
players are all collected from x
x[[1]] = tournament itself - from TournamentSimulation()
x[[1]][[z]] = single round of tournament
x[[1]][[length(x)]] = final round of tournament: 2 players left, player dataframe stored here is the
final one, with winner
x[[1]][[(length(x[[1]]))]]$players = players dataframe of final round
Reference: 3.3:list[[]]:<Matloff,2011> 3.4:data.frame[[]]:<Matloff,2011> "
tourney <- function(n) {
x <- TournamentSimulation(n)
13
20187281
AllGamesPlayedInTournament <- NULL
AllPlayersInTournament <- NULL
for(o in x[[1]]) {
AllGamesPlayedInTournament <- rbind(AllGamesPlayedInTournament, o$games) }
AllPlayersInTournament <- rbind(AllPlayersInTournament, x[[1]][[(length(x[[1]]))]]$players)
return(list(AllGamesPlayedInTournament, AllPlayersInTournament, x[[3]]))
}
