setwd("C:\\Users\\U S E R\\OneDrive - Sri Lanka Institute of Information Technology\\2 Year 1 Semester\\PS\\Lab\\Labsheet02")
#import files
data1<- read.table("Data1.txt",header = TRUE,sep=",")
data2<- read.csv("DATA 2.csv",header = TRUE)

#view the data(must close opening window before write any commands)
fix(data2)
fix(data1)

##Exporting Data Frames
height<-c(12,23,56)
weight<-c(45,78,89)
sheep<-data.frame(height,weight)
fix(sheep)
write.csv(sheep,file = "SheepNew.csv")
write.table(sheep,file = "Sheeptabl.txt")


#2.
#create the vectore
x<-1:15
#get the count of the number divide by 3
count<-sum(x%%3==0)
#print the value
cat("Count the number divide by 3 :",count,"\n")

#3.
# create vector
y<-c(4,6,2,8,9,1)
max<-y[1] # assgin max value the first index of vector
for (i in 2:length(y)) {#loop the values in vector and detamine the max value
  if(y[i]>max){
    max<-y[i]
  }
}
# print the value
cat("Max value is :",max,"\n")


#4.
max_value_index<-which.max(y)#find the max value index
 cat("Max value : ",y[max_value_index])# print the value in max value index
