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
