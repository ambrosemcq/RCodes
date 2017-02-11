value=-100

values=c(9,25,100)
for (value in values){ # do this for each value in values
  print(sqrt(value))
}
values=c(9,25,100)
rootValues=c() # empty vector
for (value in values){
  rootValues=c(rootValues,sqrt(value)) # updating vector
}
# to see the results:
rootValues
values=c(9,25,-100)
rootValues=c()
for (value in values){
  rootValues=c(rootValues,sqrt(value))
}
# to see the results:
rootValues
values=c(9,25,-100,144,-72)
rootValues=c()
for (value in values){
  if (value >=0){
    rootValues=c(rootValues,sqrt(value))
  }else {
    print('We added a missing value, negative input detected')
    rootValues=c(rootValues,NA)
  }
}
# to see the results:
rootValues
values=c(9,25,-100,144,-72)
rootValues=c()
for (value in values){
  if (value <0){
    print('We need to stop, invalid value detected')
    break
  }
  rootValues=c(rootValues,sqrt(value))
}
rootValues
values=list(9,NA,'1000',-100,144,-72)
for (value in values){
  if (is.na(value)){
    print('missing value as input')
    next
  }
  
  if (value <0){
    print('negative value as input')
    next
  }
  
  if (is.character(value)){
    print('char as input')
    next
  }
  rootVal=sqrt(value)
  print(paste(rootVal,'is the root of ',value))
}
x=NA
y=10
x+10 #?
values=c(9,25,-100,144,-72)
counterOfInvalids=0 # initializong counter
for (value in values){
  if (value < 0){
    counterOfInvalids=counterOfInvalids+1 #updating counter
  }
}
counterOfInvalids
values=c(9,25,-100,144,-72)
positionInvalids=c()
currentPosition=1  # initial position
for (value in values){
  if (value < 0){
    positionInvalids=c(positionInvalids,currentPosition)
  }
  currentPosition=currentPosition+1 # becareful WHERE you put the 'counter'
}
positionInvalids 

# testing:
values[positionInvalids]
sqrt(-10)  # R will take care (you may or may not want that)
sqrt(10)   # No problem
sqrt('10') # R can not take care here
value ='100' 

tryCatch(
  #part 1: what to do if no problem
  print(sqrt(value)),
  #part 2: what to do if input not right for function
  warning = function(w) {print(paste(value, "is a Wrong number!"))},
  #part 3: what to do if input not understood
  error = function(e) {print(paste(value,"is Not even a number!!"))} 
)
library(readxl)
folderName='~/Graduate School - UW/Winter 2017/599 C - Programming'
fileName='people.xlsx'
fileExcel=file.path(folderName,fileName)
dataFromExcel=read_excel(fileExcel,1) # table '1'
dataFromExcel
# what is the oldest age (without using function 'max')
oldestAge=0
for (age in dataFromExcel$ages){
  if (oldestAge<age){
    oldestAge=age
  }
}
# Then:
oldestAge
countOldest=0
for (age in dataFromExcel$ages){
  if (oldestAge==age){
    countOldest=countOldest+1
  }
}
# Then:
countOldest
dataFromExcel[dataFromExcel$ages==oldestAge,]
numRows=nrow(dataFromExcel)
numCols=ncol(dataFromExcel)

# part 1
oldestAge=0
positionsOfOldest=c()
countOldest=0

for (position in 1:numRows){
  age = dataFromExcel[position,'ages']
  if (oldestAge<age){
    oldestAge=age
  }
}

# part 2
for (position in 1:numRows){
  age = dataFromExcel[position,'ages']
  if (oldestAge==age){
    countOldest=countOldest+1
    positionsOfOldest=c(positionsOfOldest,position)
  }
}

# What is the oldest age?
oldestAge

# How many people share the oldest age?
countOldest

# Who is the oldest?
dataFromExcel[positionsOfOldest,]

#Homework
#1.Redo the first two questions in the homework of session 1 using if and for (and related functions).
#What was the most visited city in 2015?
install.packages("readxl")
library(readxl)
folderName='~/Graduate School - UW/Winter 2017/599 C - Programming'
fileName='cities.xlsx'
fileExcel=file.path(folderName,fileName)
dataFromExcel=read_excel(fileExcel,1) # table '1'
str(dataFromExcel)
dataFromExcel
mostvisited=0
for (visit in dataFromExcel$visits2015){
  if (mostvisited<visit){
    mostvisited=visit
  }
}
# Then:
mostvisited
dataFromExcel[dataFromExcel$visits2015==mostvisited,]
#What was the least visited city in Asia in 2013?
VisitAsia=dataFromExcel[dataFromExcel$region=='Asia',]
leastvisitedAsia=100
for (visit in dataFromExcel$visits2013){
  if (leastvisitedAsia>visit){
    leastvisitedAsia=visit
  }
}
# Then:
leastvisitedAsia
VisitAsia
VisitAsia[VisitAsia$visits2013==leastvisitedAsia,]
#What are the three least visited cities in Asia in 2015?
leastVisited2013=100
positionsofleast=c()
countleast2013=0
for (position in 1:numRows){
  visit = VisitAsia[position,'visits2015']
  if (leastVisited2013>visit){
    leastVisited2013=visit
  }
}
for (position in 1:numRows){
  visit = VisitAsia[position,'visits2015']
  if (leastVisited2013>11.2){
    countleast2013=countleast2013+1
    positionsOfleast=c(positionsOfleast,position)
  }
}
countleast2013
VisitAsia[positionsOfleast,]
