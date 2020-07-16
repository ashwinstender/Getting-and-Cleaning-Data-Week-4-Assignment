#-----Peer Graded Assignment Week 4: Getting and Cleaning Data Course Project-----

#Load relevant packages:
library(dplyr)
install.packages("data.table")
library(data.table)
setwd()


#---Step 1: Load relevant data sets into environment:---

#Read test data:
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", quote="\"", comment.char="")

#Read train data:
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="")

#Read features labels & activity data:
features <- read.table("./UCI HAR Dataset/features.txt", quote="\"", comment.char="")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", quote="\"", comment.char="")
colnames(activity) <- c("activityId", "activityLabel")

#---Step 2: Merging the relevant data sets & assign column names:---

#Merging data sets:
merged_tidy <- rbind(cbind(subject_train, x_train, y_train), cbind(subject_test, x_test, y_test))

#Renaming columns:
colnames(merged_tidy) <- c("subject", features[, 2], "activity")


#---Step 3: Filter columns tidy data set, extracting the mean and sd from each measurement:---

#Point out the columns within the data set which we are going to use:
columnsMerged_tidy <- grepl("subject|activity|mean|std", colnames(merged_tidy))

#Use this logical vector to filter our tidy data set on the columns which we want to keep:
merged_tidy <- merged_tidy[, columnsMerged_tidy]


#---Step 4: Changing variable "activity" from numerical input to  full activity description:---

#Use "activity" data set to assign the activity description to the corresponding number as stated in the "merged_tidy" data set.
merged_tidy$activity <- factor(merged_tidy$activity, 
                                 levels = activity[, 1], labels = activity[, 2])


#---Step 5: Creating final tidy data file with averages regarding all variables :---

#Grouping by subject and type of activity, summarizing using the mean
merged_tidyMeans <- merged_tidy %>% group_by(subject, activity) %>%
  summarise_each(funs(mean))

#Create the final "tidy_data.txt" file
write.table(merged_tidyMeans, "tidy_data.txt", row.names = FALSE, quote = FALSE)


