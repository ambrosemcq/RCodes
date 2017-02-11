# You can have some inputs with default values:
riseToPower=function(base,exponent=2){
  #####
  result=1
  if (exponent > 0){
    for (time in 1:exponent){
      result=result*base
    }
  }
  #####
  return(result)
}
# Since you have a default value in the input arguments, you decide if you give that input or not. Let's see how it works:
riseToPower(9)
riseToPower(9,3)
riseToPower(9,0)
# for sure you can use the argument name:
riseToPower(base=9,exponent=0)
# using arguments names does not require order:
riseToPower(exponent=0,base=9)
#Homework
# Change the above function to create the function riseToPowerPlus, which gives a good answer even when the power is negative.
riseToPowerPlus=function(base,exponent=2){
  result=1
  if(exponent>0){
    for (time in 1:exponent){
      result=result*base
    }
  }
  result=1
  if (exponent<0){
    for (time in exponent:-1){
      result=result*(1/base)
    }
  }
  return(result)
}


riseToPowerPlus(7)
riseToPowerPlus(7,-2)

# Change the function 'factors' to reduce the amount of iterations in the for loop and still get the factors shown above.factors=function(number){
vectorOfAnswers=c(number) 
for (i in 1:(number/2)){
  if ((number %% i) == 0){ 
    vectorOfAnswers=c(i, vectorOfAnswers)
  }
}
return (vectorOfAnswers) 
factors(20)

# Change your new function 'factors' to avoid negative values or zeros as input; your code should return a message if an invalid valid was input.
factors=function(number){
  vectorOfAnswers=c(number) 
  for (i in 1:(number/2)){
    if (number<=0){
      print('Invalid number as input')
      return(NA)
      break
    }else{
      if ((number %% i) == 0){ 
        vectorOfAnswers=c(vectorOfAnswers, i)
      }
    }
  }
  return (vectorOfAnswers) 
}

factors(sort(144))
factors(-144)

# Change your newest function 'factors' to accept only positive integer values; your code should return a message if an invalid valid was input.
factors=function(number){
  vectorOfAnswers=c(number) 
  for (i in 1:(number/2)){
    if (number <=0){ 
      print=('accepts only positive integers')
      break 
    }else{
      if((number %% i) == 0){  
        vectorOfAnswers=c(vectorOfAnswers, i)
      }
    }
  }
  return(sort(vectorOfAnswers))
}
factors(20) correct
factors(-20) 

# Make a function that reads two vectors and returns a data frame with those vectors and extra columns with their sum, difference, multiplication and division.
data.frame(row.names = number)
number <- c(2,4,5,7)
number2 <- c(12,4,3,22)
numDF <- data.frame(number,number2,
                    stringsAsFactors = FALSE)
multiply <- c(number*number2)
numDF$multiply <- multiply 
division <- c(number/number2)
numDF$division <- division
addition <- c(number+number2)
numDF$addition <- addition
subtract <- c(number-number2)
numDF$subtract <- subtract
power <- c(number^number2)
numDF$power <- power
numDF

vector1=c(3,6,15)
vector2=c(6,7,14)
newDataFrame=function(vector1,vector2){
  vectorsum=vector1+vector2
  vectordiff=vector1-vector2
  vectormult=vector1*vector2
  vectordiv=vector1/vector2
  result=data.frame(vector1,vector2,vectorsum,vectordiff,vectormult,vectordiv)
  return(result)
}
newDataFrame(vector1,vector2)

#Understand what this function is doing:
library(readxl)
folderName='data'
fileName='dataforstrange.xlsx'
fileExcel=file.path(folderName,fileName)
stranger=read_excel(fileExcel,1) # table '1'
str(strangerF)

stranger=function(x){
  answer=0
  change=T
  for (value in x){
    if (change){
      answer=answer+value
    }else{
      answer=answer-value
    }
    change=!change 
  }
  return (answer)
}
#This function starts with a number, 0, and by considering if the answer is true as a value within x (i.e. change=True), it returns 0 + value. Then, change becomes false. The next value in x then takes on change of false, so the next number will be (answer+value)-value.

