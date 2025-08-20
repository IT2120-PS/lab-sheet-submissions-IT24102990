#print 1 to 100
print(1:100)

#to get the directory
getwd()

#set the file directory must type \\ for \ and must write directory in " "
setwd("C:\\Users\\it24102990\\Desktop\\IT24102990")




#Excersise 
#Q1
a<-10
b<-3


#Q2
a+b
a%/%b
a%%b
a^b

#Q3
isTRUE(a>b)
isTRUE(b==3)
isTRUE(a>5|b<2)


#Q4
scores<-c(85,90,78,92,NA,88)

print(class(scores))
print(mean(scores,na.rm = TRUE))
print(scores[!is.na(scores) & scores>85],na.rm=TRUE)


#Q5
names<-c("Alice","Bob","Charlie","Diana","Evan","Fiona")
passed<-scores>=80

#Q6
results<-data.frame(Name=names,Score=scores,Passed=passed)

#Q7
str(results)
print(results)

#Q8
print(max(results$Score,na.rm=TRUE))
