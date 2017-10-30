# Course Project - Getting and Cleaning Data

This documents provides a high level overiew of what the analysis file `run_analysis.R` script does.

The analysis file `run_analysis.R` can be broken down in to a few sections.

## Data loading
The script first downloads the data from the course web site. The script will then unzip and load the following data files into memory:

- /train/X_train.txt
- /test/X_test.txt
- /train/subject_train.txt
- /test/subject_test.txt
- /features.txt

## Merging Data and Extracting Measurements
The training and test data will be combined using the `rbind` function.  Columns that are not related to *mean* and *standard deviation* will be removed from the data frame.  Subjects will also be merged to the data frame.

## Label Activities
The data files that labels the activities will be loaded:
- /train/y_train.txt
- /test/y_test.txt

The activity label mapping file `activity_labels.txt` will also be loaded to create a factor variable, with descriptive activity names.  Each activity in the data frame will be labeled by this factor variable in the `activity` column in the data frame.

## Create Tidy Dataset
Using functions from `dplyr` package, a second, independent tidy data set with the average of each variable for each activity and each subject is created.  The column name of this new dataset is also updated to reflect the new variables.
