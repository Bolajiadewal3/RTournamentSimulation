# RTournamentSimulation
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Bolajiadewal3/RTournamentSimulation)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/Bolajiadewal3/RTournamentSimulation)
![GitHub language count](https://img.shields.io/github/languages/count/Bolajiadewal3/RTournamentSimulation)
![GitHub top language](https://img.shields.io/github/languages/top/Bolajiadewal3/RTournamentSimulation)


Single Elimination Tournament Simulation in R

This contains a single elimination tournament that can have a number of players specified. The number must be even, odd will not work due to the nature of a single elimintation tournament


Note: rationale behind list function returns: R creates local copies of data inside functions limiting the
ways of manipulating the three tables, from within a function to two:
Returning edited dataframes within lists that cascade up entire tournament OR
Utilising global variables - prone to human error


Tourney (1)-> TournamentSimulation (1)-> FindTotalNumberOfRounds.   
        (1)-> generatePlayers (1)-> generatePhoneNumbers.   
        (1<)-> RoundSimulation (1<)-> GameSimulation.    

Key::
(1)-> : Calls next function once.   
(1<)-> : Calls next function possibly more than once.   

The mode of operation of the program::  
(1) The program will take the number of players specificied by the user in the tourney() function.   
(2) The program will produce a dataframe of automatically created players, each with a unique _phone number_, _gender_ and _ID_.   
(3) The program will simulates games within a round, the rounds within the tournament, and return the entire tournament to the function call.   

To run the program::    
(1) Import all the .r files in R studio or your terminal.   
(2) Run tourney(x) with an even number of players, x. 

References used::  
• Chesney, T. (2022) “Monte Carlo Methods,” Data Management and Manipulation, University of Nottingham, 3 November.  
• Chesney, T. (2022) “SQL Tutorial,” Data Management and Manipulation, University of Nottingham, 27 October.  
• Matloff, N. (2011) The art of R programming: A tour of statistical software design. San Francisco, CA: No Starch Press.  
