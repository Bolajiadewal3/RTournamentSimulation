# RTournamentSimulation
Single Elimination Tournament Simulation in R

This contains a single elimination tournament that can have a number of players specified. The number must be even, odd will not work due to the nature of a single elimintation tournament


Note: rationale behind list function returns: R creates local copies of data inside functions limiting the
ways of manipulating the three tables, from within a function to two:
Returning edited dataframes within lists that cascade up entire tournament OR
Utilising global variables - prone to human error


Tourney (1)-> TournamentSimulation (1)-> FindTotalNumberOfRounds 
       (1)-> generatePlayers (1)-> generatePhoneNumbers
        (1<)-> RoundSimulation (1<)-> GameSimulation


Key::
(1)-> : Calls next function once
(1<)-> : Calls next function possibly more than once
