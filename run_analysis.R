# get data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "temp.zip")
unzip("temp.zip")
setwd("./UCI HAR Dataset")

#load data
features <- read.table("./features.txt", sep=" ", header = FALSE,
                       colClasses = c("numeric", "character"),
                       col.names = c("idx", "measurement"))

#include only mean and standard deviation measurements
mean.and.std <- features[grepl("-(mean\\(\\)|std\\(\\))", features$measurement),]
train.data <- read.table("./train/X_train.txt")
test.data <- read.table("./test/X_test.txt")
train.subj <- read.table("./train/subject_train.txt")
test.subj <- read.table("./test/subject_test.txt")

#merge training and test data
all.data <- rbind(train.data, test.data)

#include only mean and standard deviation measurements
all.data <- all.data[, mean.and.std$idx]
names(all.data) <- mean.and.std$measurement

#add subject to data set
all.subj <- rbind(train.subj, test.subj)
all.data$subject <- all.subj$V1

#label activities with descriptive labels
train.act <- read.table("./train/y_train.txt", col.names = c("activity.code"))
test.act <- read.table("./test/y_test.txt", col.names = c("activity.code"))
all.act <- rbind(train.act, test.act)
act <- read.table("./activity_labels.txt", col.names = c("activity.code", "activity"))
all.data$activity <- factor(all.act$activity.code, levels = act$activity.code,
                            labels = c("Walking", "Walking Upstairs", "Walking Downstairs",
                                       "Sitting", "Standing", "Laying"))


#prepare tidy data set, calculate the mean of all measurements
library(dplyr)
cols <- names(all.data)
tidy.data <- all.data %>%
  group_by(subject, activity) %>%
  summarise_at(cols[!cols %in% c("activity", "subject")], mean)

#give meaningful variable names
new.cols <- c()
for (col in names(tidy.data)) {
  if (grepl("-(mean)|(std)\\(\\)", col)) {
    new_col <- paste("mean.of", col, sep=".")
    new_col <- gsub("\\(\\)", "", new_col)
    new.cols <- c(new.cols, new_col)
  } else {
    new.cols <- c(new.cols, col)
  }
}
names(tidy.data) <- new.cols
