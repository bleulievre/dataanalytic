#creating a datafram 
#example:RPI weather dataframe

days<-c('Mon','Tue','Wed','Thur','Fri','Sat','Sun') #days
temp<-c(28,30.5,32,31.2,29.3,27.9,26.4) #Temperature in F' during the winter :)
snowed<-c('T','T','F','F','T','T','F') #snowed on that day : T=True, F=False 
help('data.frame')
RPI_Weather_Week<-data.frame(days,temp,snowed) #creating the dataframe using the data.frame()function 

RPI_Weather_Week
head(RPI_Weather_Week) #head of the dataframe, Note: it will show only 6 rows, usually head(function) shows the 
#first 6 rows of the dataframe, here we have only 7 rows in our dataframe.

str(RPI_Weather_Week) #we can take a look at the structure of the dataframe using the str() function

summary(RPI_Weather_Week) #summary of the data frame using the summary () fucntion

RPI_Weather_Week[1,] #showing the 1st row and all the columns
RPI_Weather_Week[,1] #showing the 1st column and all the rows

RPI_Weather_Week[,'snowed']
RPI_Weather_Week[,'days']
RPI_Weather_Week[,'temp']
RPI_Weather_Week[1:5,c('days','temp')]
RPI_Weather_Week$temp
subset(RPI_Weather_Week,subset=snowed==TRUE)
help("subset")#Return subsets of vectors, matrices or data frames which meet conditions.

sorted.snowed<-order(RPI_Weather_Week['snowed'])#ordr the data
sorted.snowed
help(order)
RPI_Weather_Week[sorted.snowed,]

#RPI_Weather_Week[descending_snowed,]
dec.snow<-order(-RPI_Weather_Week$temp)
dec.snow
#creating datdframes
#creating an empty dataframe
empty.DataFrame<-data.frame()
v1<-1:10
v1
letters
v2<-letters1:10]
df<-data.frame(col.name.1=v1,col.name.2=v2)
df
#importing data and exporting data
#wring to a CSV file:
write.csv(df,file='saved_df1.csv')
df2<-read.csv('saved_df1.csv')
df2

##########################################################
#read in csv file 
EPI_data <- read.csv("~/Desktop/data analytic /lab 1/2010EPI_data.csv")
EPI_data

#skip the first column, the first one is not useful 
EPI_data <- read.csv("~/Desktop/data analytic /lab 1/2010EPI_data.csv",skip=1)
EPI_data

#path can be find with setwd()
#read library to open xlsx data
library()
#or
#EPI_data <- read.xlsx("~/Desktop/data analytic /lab 1/2010EPI_data.xlsx")
EPI_data

# Note: replace default data frame name – cannot start with numbers!
View(EPI_data)
#
attach(EPI_data) 	# sets the ‘default’ object

library()
fix(EPI_data) 	# launches a simple data editor

EPI<-EPI_data$EPI
EPI 			# prints out values EPI_data$EPI

tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array

###Exercise 1: exploring the distribution

summary(EPI) $stats

fivenum(EPI,na.rm=TRUE) 

stem(EPI) #stem and leaf plot

hist(EPI)

hist(EPI,seq(30.,95,1.0),prob=TRUE)

lines(density(EPI,na.rm=TRUE,bw=1.)) # or try bw=“SJ”

rug(EPI)
#Use help(<command>), e.g. > help(stem)

#fitting a distribution beyond histograms


#Cumulative density function
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)

# Quantile-Quantile?
par(pty="s")
qqnorm(EPI); qqline(EPI)

#Make a Q-Qplot against the generating distribution by: x<-seq(30,95,1)
 qqplot(qt(ppoints(250), df = 5),seq(30,95,1), xlab = "Q-Q plot for t dsn")
  qqline(seq(30,95,1))

#box plot
boxplot(EPI,DALY)
boxplot(EPI,WATER_H)
boxplot(EPI,ENVHEALTH)
boxplot(EPI,ECOSYSTEM)
boxplot(EPI,AIR_H)
boxplot(EPI,WATER_E)

boxplot(EPI,BIODIVERSITY)
#qqplot
qqplot(EPI,DALY)
qqplot(EPI,WATER_H)
qqplot(EPI,ENVHEALTH)
qqplot(EPI,ECOSYSTEM)
qqplot(EPI,AIR_H)
qqplot(EPI,WATER_E)
#
#other data
GRUMP_data <- read.csv(”<path>/GPW3_GRUMP_SummaryInformation_2010.csv")


####exercise 2: flitering (populations)
#conditonal flitering
EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)

boxplot(EPI,Eland)

qqplot(EPI,Eland)

#No_surface_water
No_surface_water<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)

boxplot(EPI,Eland)

qqplot(EPI,Eland)




