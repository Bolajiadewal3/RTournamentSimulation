"----------------------------------------------------------------------------------------------------------------------------- ------- Function: FindTotalNumberOfRounds
Purpose: Find total number of rounds to be played
Parameters:
numberOfPlayers: total number of players
Returns: total number of rounds
Declarations::
n: number of rounds counter
c: copy of the number of players
f: Boolean: if the number of rounds has been found
Loop: halves c each iteration and checks if value reached 2, incrementing n each time. Once 2 is reached, one round is left - thus n++ returned
"

FindTotalNumberOfRounds <- function(numberOfPlayers) { n <- 0
c <- numberOfPlayers
f <- TRUE
while(f) {
if(identical(c, 2)) {
f <- FALSE
}else{
c<-c/2
n<-n+1
}
}
return(n+1)
}
