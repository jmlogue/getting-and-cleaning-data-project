##########################################
# Code for class project: Getting and cleaning datad
##########################################

# We want to merget the train (X_train, Y_train) and test (X_test, Ytest)
# for the X_ files we want to extract only the mean and std data.

# The names and columns for the data are held here.
# First create a list wiht the name and colum number of the data
data_wanted<-list()
data_wanted[[1]]<-c(1, "tBodyAcc-mean()-X")
data_wanted[[2]]<-c(2, "tBodyAcc-mean()-Y")
data_wanted[[3]]<-c(3, "tBodyAcc-mean()-Z")
data_wanted[[4]]<-c(4, "tBodyAcc-std()-X")
data_wanted[[5]]<-c(5, "tBodyAcc-std()-Y")
data_wanted[[6]]<-c(6, "tBodyAcc-std()-Z")
data_wanted[[7]]<-c(41, "tGravityAcc-mean()-X")
data_wanted[[8]]<-c(42, "tGravityAcc-mean()-Y")
data_wanted[[9]]<-c(43, "tGravityAcc-mean()-Z")
data_wanted[[10]]<-c(44, "tGravityAcc-std()-X")

data_wanted[[11]]<-c(45, "tGravityAcc-std()-Y")
data_wanted[[12]]<-c(46, "tGravityAcc-std()-Z")
data_wanted[[13]]<-c(81, "tBodyAccJerk-mean()-X")
data_wanted[[14]]<-c(82, "tBodyAccJerk-mean()-Y")
data_wanted[[15]]<-c(83, "tBodyAccJerk-mean()-Z")
data_wanted[[16]]<-c(84, "tBodyAccJerk-std()-X")
data_wanted[[17]]<-c(85, "tBodyAccJerk-std()-Y")
data_wanted[[18]]<-c(86, "tBodyAccJerk-std()-Z")
data_wanted[[19]]<-c(121, "tBodyGyro-mean()-X")
data_wanted[[20]]<-c(122, "tBodyGyro-mean()-Y")

data_wanted[[21]]<-c(123, "tBodyGyro-mean()-Z")
data_wanted[[22]]<-c(124, "tBodyGyro-std()-X")
data_wanted[[23]]<-c(125, "tBodyGyro-std()-Y")
data_wanted[[24]]<-c(126, "tBodyGyro-std()-Z")
data_wanted[[25]]<-c(161, "tBodyGyroJerk-mean()-X")
data_wanted[[26]]<-c(162, "tBodyGyroJerk-mean()-Y")
data_wanted[[27]]<-c(163, "tBodyGyroJerk-mean()-Z")
data_wanted[[28]]<-c(164, "tBodyGyroJerk-std()-X")
data_wanted[[29]]<-c(165, "tBodyGyroJerk-std()-Y")
data_wanted[[30]]<-c(166, "tBodyGyroJerk-std()-Z")

data_wanted[[31]]<-c(201, "tBodyAccMag-mean()")
data_wanted[[32]]<-c(202, "tBodyAccMag-std()")
data_wanted[[33]]<-c(214, "tGravityAccMag-mean()")
data_wanted[[34]]<-c(215, "tGravityAccMag-std()")
data_wanted[[35]]<-c(227, "tBodyAccJerkMag-mean()")
data_wanted[[36]]<-c(228, "tBodyAccJerkMag-std()")
data_wanted[[37]]<-c(240, "tBodyGyroMag-mean()")
data_wanted[[38]]<-c(241, "tBodyGyroMag-std()")
data_wanted[[39]]<-c(254, "tBodyGyroJerkMag-std()")
data_wanted[[40]]<-c(255, "tBodyGyroJerkMag-mad()")

data_wanted[[41]]<-c(266, "fBodyAcc-mean()-X")
data_wanted[[42]]<-c(267, "fBodyAcc-mean()-Y")
data_wanted[[43]]<-c(268, "fBodyAcc-mean()-Z")
data_wanted[[44]]<-c(269, "fBodyAcc-std()-X")
data_wanted[[45]]<-c(270, "fBodyAcc-std()-Y")
data_wanted[[46]]<-c(271, "fBodyAcc-std()-Z")
data_wanted[[47]]<-c(345, "fBodyAccJerk-mean()-X")
data_wanted[[48]]<-c(346, "fBodyAccJerk-mean()-Y")
data_wanted[[49]]<-c(347, "fBodyAccJerk-mean()-Z")
data_wanted[[50]]<-c(348, "fBodyAccJerk-std()-X")

data_wanted[[51]]<-c(349, "fBodyAccJerk-std()-Y")
data_wanted[[52]]<-c(350, "fBodyAccJerk-std()-Z")
data_wanted[[53]]<-c(424, "fBodyGyro-mean()-X")
data_wanted[[54]]<-c(425, "fBodyGyro-mean()-Y")
data_wanted[[55]]<-c(426, "fBodyGyro-mean()-Z")
data_wanted[[56]]<-c(427, "fBodyGyro-std()-X")
data_wanted[[57]]<-c(428, "fBodyGyro-std()-Y")
data_wanted[[58]]<-c(429, "fBodyGyro-std()-Z")
data_wanted[[59]]<-c(503, "fBodyAccMag-mean()")
data_wanted[[60]]<-c(504, "fBodyAccMag-std()")

data_wanted[[61]]<-c(529, "fBodyBodyGyroMag-mean()")
data_wanted[[62]]<-c(530, "fBodyBodyGyroMag-std()")
data_wanted[[63]]<-c(542, "fBodyBodyGyroJerkMag-mean()")
data_wanted[[64]]<-c(543, "fBodyBodyGyroJerkMag-std()")

columns<-list()
cnames<-list()
for (i in 1:length(data_wanted)){
    columns[[i]]<-as.numeric(data_wanted[[i]][1])
    cnames[[i]]<-data_wanted[[i]][2]

}
columns<-unlist(columns)
cnames<-unlist(cnames)

#################################################
### First get data from the train sets
#################################################
# Retrive data from the training set X_train
setwd("//users//Jenny//downloads//UCI HAR Dataset//train//")
temp<-data.frame(read.table(file="X_train.txt"))

train<-temp[,columns]
colnames(train)<-cnames

# Include participant data and
temp<-data.frame(read.table(file="subject_train.txt"))
temp2<-data.frame(read.table(file="Y_train.txt"))

train<-cbind(temp2,train)
train<-cbind(temp,train)

colnames(train)[[1]]<-"Subject ID"
colnames(train)[[2]]<-"Activity"

#################################################
### First get data from the test sets
#################################################
# Retrive data from the training set X_test
setwd("//users//Jenny//downloads//UCI HAR Dataset//test//")
temp<-data.frame(read.table(file="X_test.txt"))

test<-temp[,columns]
colnames(test)<-cnames

# Include participant data and
temp<-data.frame(read.table(file="subject_test.txt"))
temp2<-data.frame(read.table(file="Y_test.txt"))

test<-cbind(temp2,test)
test<-cbind(temp,test)

colnames(test)[[1]]<-"Subject.ID"
colnames(test)[[2]]<-"Activity"

#################################################
### Combine the two datasets
#################################################

alldata<-rbind(train,test)

#################################################
### change Activity numbers to factors
#################################################
# Activites codes: 1 WALKING, 2 WALKING_UPSTAIRS
# 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING
# 6 LAYING

factorname<-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS", "SITTING","STANDING","LAYING")
factorcount<-c(1:6)

alldata$Activity<-factor(alldata$Activity,factorcount,labels=factorname)


#################################################
### Create tidy dataset
#################################################
for (i in 1:max(alldata$Subject.ID)){
    for (j in 1:6){
        sub<-subset(alldata,Subject.ID==i & Activity==factorname[[j]])
        row<-data.frame(Subject.ID=i,Activity=factorname[[j]])
        means<-data.frame(lapply(sub[,3:64],mean))
        row<-cbind(row,means)
        if(i==1 && j==1){
            means_table<-row
        }else{
            means_table<-rbind(means_table,row)
        }
    }
}

#################################################
### Output tidy dataset
#################################################
write.table(means_table,file="Tidy_data.txt", row.name=FALSE)

