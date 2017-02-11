install.packages("readxl")
library(readxl)
folderName='~/Graduate School - UW/Winter 2017/599 C - Programming'
fileName='cities.xlsx'
fileExcel=file.path(folderName,fileName)
dataFromExcel=read_excel(fileExcel,1) # table '1'
str(dataFromExcel)
dataFromExcel
dataFromExcel$city
dataFromExcel[which.max(dataFromExcel$visits2015),] 
dataFromExcel[which.min(dataFromExcel$visits2013),] 
dataFromExcel[dataFromExcel$region=='Asia' & which.min(dataFromExcel$visits2013),]
dataFromExcel[which.min(dataFromExcel$visits2013) & dataFromExcel$region=='Asia',]
dataFromExcel$region=='Asia'[which.min(dataFromExcel$visits2013),]
dataFromExcel[dataFromExcel$region=='Asia',] & dataFromExcel[which.min(dataFromExcel$visits2013),]
VisitAsia=dataFromExcel[dataFromExcel$region=='Asia',]
VisitAsia[which.min(VisitAsia$visits2013),]
tail(VisitAsia$visits2015,3)
VisitAsia[which.min(VisitAsia$visits2013),3]
tail(VisitAsia[which.min(VisitAsia$visits2013),3])
VisitAsia[order(-VisitAsia$visits2013),]
tail(VisitAsia[which.min(VisitAsia$visits2013),],n=3)
tail(VisitAsia[order(-VisitAsia$visits2013),],n=1) & head(VisitAsia[order(-VisitAsia$visits2013),],n=1)
VisitAsia[which.min(VisitAsia$visits2013) & which.max(VisitAsia$visits2013),]
tail(VisitAsia[order(-VisitAsia$visits2013),],n=1) |  head(VisitAsia[order(-VisitAsia$visits2013),],n=1)
head(dataFromExcel,4)
tail(VisitAsia[order(-VisitAsia$visits2013),],n=1)
head(VisitAsia[order(-VisitAsia$visits2013),],n=1)
mostVisited=0
for (visits in dataFromExcel$visits2013){
  if (mostVisited<visits){
    mostVisited=visits
  }
}
# Then:
mostVisited
dataFromExcel
