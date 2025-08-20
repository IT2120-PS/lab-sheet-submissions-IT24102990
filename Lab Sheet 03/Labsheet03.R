setwd("C:\\Users\\U S E R\\OneDrive - Sri Lanka Institute of Information Technology\\2 Year 1 Semester\\PS\\Lab\\Labsheet03")
getwd()
#part 01
#import data
data<-read.csv("DATA 3.csv",header = TRUE)
#view tha data
fix(data)
#rename columns
names(data)<-c("Age","Gender","Accommodation")
#converting gender Accommodation in to factor/catergarical variables
data$Gender <- factor(data$Gender,c(1,2),c("Male","Female"))
data$Accommodation <- factor(data$Accommodation,c(1,2,3),c("Home","Boarded","Lodging"))
#Attach the file in to R ,then can call the variables by their names
attach(data)

#part 2
#One-way  frequency table
gender.freq<-table(Gender)
gender.freq

acc.freq<-table(Accommodation)
acc.freq

dev.new()
#Bar chart
barplot(gender.freq,main = "Bar Chart for Gender ",ylab="Frequency",xlab="Gender")
abline(h=0)

dev.new()
barplot(acc.freq,main = "Bar Chart for Accommadation ",ylab="Frequency",xlab="Accommadation")
abline(h=0)

#Piechart
dev.new()
pie(gender.freq,main="Pie chart of gender")

dev.new()
pie(acc.freq,main="Pie chart of Accommadation")
fix(data)

#Histogram
dev.new()
hist(Age,main="Histogram of Age")

#Box plot
dev.new()
boxplot(Age,main="Boxplot for Age",horizontal = TRUE,outline = TRUE)



#part 03
#Two way frequency table
gender_acc.freq<-table(Gender,Accommodation)
gender_acc.freq

#Component /Stacked bar chart
dev.new()
barplot(gender_acc.freq,beside = FALSE,main = "Gender & Accommodation", legend=rownames(gender_acc.freq),
        xlab="Accomadation",ylab="Frequency")
abline(h=0)

#Multiple/clustered bar chart
dev.new()
barplot(gender_acc.freq,beside = TRUE,main = "Gender & Accommodation", legend=rownames(gender_acc.freq),
        xlab="Accomadation",ylab="Frequency")
abline(h=0)




#part04
#Side-by-side boxplots
dev.new()
boxplot(Age~Gender,main="Boxplot for Age by Gender",xlab="Gender",ylab="Age")

boxplot(Age~Accommodation,outpch=8,main="Boxplot for Age by Accommadodation",xlab="Accommodation",
        ylab="Age",outline=TRUE)





#part 05
#2 catagorical with a numerical
xtabs(Age~Gender+Accommodation)/gender_acc.freq
detach(data)





#Exercise

#1. 
student_data<-read.csv("Exercise.csv",header = TRUE)
fix(student_data)


#2.
#summary of x1
summary(student_data$X1)

#Histogram of x1
dev.new()
X1<-student_data$X1
hist(X1,main="Histogram of X1")

#3.

#Bar chart
barplot(student_data$X2,main = "Bar Chart for X2 ",ylab="Frequency",xlab="X2")
abline(h=0)

#frequency table
x1.freq <- table(student_data$X2)
x1.freq

#4.
boxplot(student_data$X1~student_data$X3,outpch=8,main="Boxplot for X3 by X2 ",xlab="X2",ylab="X3",outline=TRUE)



