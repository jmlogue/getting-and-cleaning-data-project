getting-and-cleaning-data-project
=================================

The purpose of this program is to analyze the download data set recording the movement patterns taken from a Samsung phone for 6 
different types of motions (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) for 30 volunters. 

The data is takn from : 
Human Activity Recognition Using Smartphones Dataset
Version 1.0
website of data download: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Informaiton on the data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Code book
The code takes the data and makes a tidy data set with average values for each participated for each
activity for the folowing values:

The components fo the file are mean and standard deviation (std) for each cardinal direction (X,Y, or Z)
Acc means acceleration.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Actual feature names: 

1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
41 tGravityAcc-mean()-X
42 tGravityAcc-mean()-Y
43 tGravityAcc-mean()-Z
44 tGravityAcc-std()-X
45 tGravityAcc-std()-Y
46 tGravityAcc-std()-Z
81 tBodyAccJerk-mean()-X
82 tBodyAccJerk-mean()-Y
83 tBodyAccJerk-mean()-Z
84 tBodyAccJerk-std()-X
85 tBodyAccJerk-std()-Y
86 tBodyAccJerk-std()-Z
121 tBodyGyro-mean()-X
122 tBodyGyro-mean()-Y
123 tBodyGyro-mean()-Z
124 tBodyGyro-std()-X
125 tBodyGyro-std()-Y
126 tBodyGyro-std()-Z
161 tBodyGyroJerk-mean()-X
162 tBodyGyroJerk-mean()-Y
163 tBodyGyroJerk-mean()-Z
164 tBodyGyroJerk-std()-X
165 tBodyGyroJerk-std()-Y
166 tBodyGyroJerk-std()-Z
201 tBodyAccMag-mean()
202 tBodyAccMag-std()
214 tGravityAccMag-mean()
215 tGravityAccMag-std()
227 tBodyAccJerkMag-mean()
228 tBodyAccJerkMag-std()
240 tBodyGyroMag-mean()
241 tBodyGyroMag-std()
254 tBodyGyroJerkMag-std()
255 tBodyGyroJerkMag-mad()
266 fBodyAcc-mean()-X
267 fBodyAcc-mean()-Y
268 fBodyAcc-mean()-Z
269 fBodyAcc-std()-X
270 fBodyAcc-std()-Y
271 fBodyAcc-std()-Z
345 fBodyAccJerk-mean()-X
346 fBodyAccJerk-mean()-Y
347 fBodyAccJerk-mean()-Z
348 fBodyAccJerk-std()-X
349 fBodyAccJerk-std()-Y
350 fBodyAccJerk-std()-Z
424 fBodyGyro-mean()-X
425 fBodyGyro-mean()-Y
426 fBodyGyro-mean()-Z
427 fBodyGyro-std()-X
428 fBodyGyro-std()-Y
429 fBodyGyro-std()-Z
503 fBodyAccMag-mean()
504 fBodyAccMag-std()
529 fBodyBodyGyroMag-mean()
530 fBodyBodyGyroMag-std()
542 fBodyBodyGyroJerkMag-mean()
543 fBodyBodyGyroJerkMag-std()
