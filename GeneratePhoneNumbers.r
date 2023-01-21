"----------------------------------------------------------------------------------------------------------------------------- -------
 11
20187281
Function:generatePhoneNumber
Purpose:Take two digit numbers and randomly select four to craft eight digitnumber
Returns:Phone number
Declarations::
possibleNumbers:series of two digit numbers - 10 to 99 n:The phone number
i:Loop counter
Function:
{n} is a vector of 4 randomly selected numbers from {possibleNumbers} {n} is compressed via paste()
Reference:
3.1:sample():<Chesney,2022> 3.2:data.frame():<Matloff,2011>
"
generatePhoneNumbers <- function() { possibleNumbers <- c(10:99)
i <- 1
n <- sample(possibleNumbers,4,replace=TRUE) n <- paste(n, collapse="")
i <- i+1
return(n)
}
