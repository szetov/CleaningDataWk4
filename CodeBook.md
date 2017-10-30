# Data Dictionary

This document describes the variables in the `tidy.data` dataset produced by the `run_analysis.R` code.  The original data is obtained as part of the assignment from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Column Definitions 
==================

The columns in this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.  With the exception of column *activity* and *subject*, all columns contains the average of the "mean" and "standard deviation" variable from the original dataset for a given subject and a given activity.

- subject  
  subject is the subject who performs the activity.  Its range is from 1 to 30.

- activity  
  this is a descriptive activity name.  Possible values are "Walking", "Walking Upstairs", "Walking Downstairs", "Laying", "Sitting" and "Standing"
  
The other columns comes with a name pattern *mean.of.{M}-{mean|std}-{XYZ}* where *{M}* is the name of the measurement; the prefix *t* and *f* in *{M}* indicates whether the measurement is in time (t) or frequency (f) domain. *{mean|std}* indicates whether the measurement was a mean or standard deviation (std), and *{XYZ}* indicates the axis of the measurement.

Here are the names of all other columns
- mean.of.tGravityAcc-mean-Z  
- mean.of.tBodyAcc-mean-X  
- mean.of.tBodyAcc-mean-Y  
- mean.of.tBodyAcc-mean-Z  
- mean.of.tBodyAcc-std-X  
- mean.of.tBodyAcc-std-Y  
- mean.of.tBodyAcc-std-Z  
- mean.of.tGravityAcc-mean-X  
- mean.of.tGravityAcc-mean-Y  
- mean.of.tGravityAcc-std-X  
- mean.of.tGravityAcc-std-Y  
- mean.of.tGravityAcc-std-Z  
- mean.of.tBodyAccJerk-mean-X  
- mean.of.tBodyAccJerk-mean-Y  
- mean.of.tBodyAccJerk-mean-Z  
- mean.of.tBodyAccJerk-std-X  
- mean.of.tBodyAccJerk-std-Y  
- mean.of.tBodyAccJerk-std-Z  
- mean.of.tBodyGyro-mean-X  
- mean.of.tBodyGyro-mean-Y  
- mean.of.tBodyGyro-mean-Z  
- mean.of.tBodyGyro-std-X  
- mean.of.tBodyGyro-std-Y  
- mean.of.tBodyGyro-std-Z  
- mean.of.tBodyGyroJerk-mean-X  
- mean.of.tBodyGyroJerk-mean-Y  
- mean.of.tBodyGyroJerk-mean-Z  
- mean.of.tBodyGyroJerk-std-X  
- mean.of.tBodyGyroJerk-std-Y  
- mean.of.tBodyGyroJerk-std-Z  
- mean.of.tBodyAccMag-mean  
- mean.of.tBodyAccMag-std  
- mean.of.tGravityAccMag-mean  
- mean.of.tGravityAccMag-std  
- mean.of.tBodyAccJerkMag-mean  
- mean.of.tBodyAccJerkMag-std  
- mean.of.tBodyGyroMag-mean  
- mean.of.tBodyGyroMag-std  
- mean.of.tBodyGyroJerkMag-mean  
- mean.of.tBodyGyroJerkMag-std  
- mean.of.fBodyAcc-mean-X  
- mean.of.fBodyAcc-mean-Y  
- mean.of.fBodyAcc-mean-Z  
- mean.of.fBodyAcc-std-X  
- mean.of.fBodyAcc-std-Y  
- mean.of.fBodyAcc-std-Z  
- mean.of.fBodyAccJerk-mean-X  
- mean.of.fBodyAccJerk-mean-Y  
- mean.of.fBodyAccJerk-mean-Z  
- mean.of.fBodyAccJerk-std-X  
- mean.of.fBodyAccJerk-std-Y  
- mean.of.fBodyAccJerk-std-Z  
- mean.of.fBodyGyro-mean-X  
- mean.of.fBodyGyro-mean-Y  
- mean.of.fBodyGyro-mean-Z  
- mean.of.fBodyGyro-std-X  
- mean.of.fBodyGyro-std-Y  
- mean.of.fBodyGyro-std-Z  
- mean.of.fBodyAccMag-mean  
- mean.of.fBodyAccMag-std  
- mean.of.fBodyBodyAccJerkMag-mean  
- mean.of.fBodyBodyAccJerkMag-std  
- mean.of.fBodyBodyGyroMag-mean  
- mean.of.fBodyBodyGyroMag-std  
- mean.of.fBodyBodyGyroJerkMag-mean  
- mean.of.fBodyBodyGyroJerkMag-std
