"----------------------------------------------------------------------------------------------------------------------------- ------- Function:generatePlayers
Purpose:generate dataframe of tournament players
Parameters:
numberOfPlayers:total number of players
Returns:Dataframe of tournament participants details, games played and record
Declarations::
list: imported list of possible names
names: random selection of names from list == number of participants g:vector of all participants genders
n:vector of all participants phone numbers
i:loop counter
key:primary-key generation, 1 - last participant
Inside loop:
spans number of participants
uses random binomial to provide genders - so not 50% men and 50% women gender assigned to g
n assigned the return of generateNumbers()
Outside loop:
12
20187281
creates dataframe with all participants
"
generatePlayers <- function(numberOfPlayers) { list <- readLines(file.choose())
names <- sample(list,numberOfPlayers,replace=TRUE) g <- NULL
n <- NULL
i<-0
key <- c(1:numberOfPlayers) while(i<numberOfPlayers) {
genders <- ifelse(rbinom(1,1,0.5),"M","F") g <- c(g,genders)
n <- c(n,generatePhoneNumbers())
i <- i+1
}
d <-
data.frame(key,names,g,n,rep(0,times=numberOfPlayers),rep(0,times=numberOfPlayers),rep(0,tim
es=numberOfPlayers),rep(FALSE,times=numberOfPlayers))
colnames(d) <- c("ID", "Name", "Gender", "Number", "Wins", "Losses", "GamesPlayed","Elim") return(d)
}
