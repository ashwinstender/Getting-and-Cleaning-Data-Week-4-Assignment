# Introduction

This repository beholds the full documentation regarding the Peer Graded Assignment Week 4, part of the Getting and Cleaning Data course on Coursera.
The information in this README.me document will discuss the background info of this assignment, a description of the relevant data set, and a walkthrough regarding
the contents of this repository.

# Assignment
A full description of the assignment as given by Coursera:
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. You should create one R script called run_analysis.R that does the following.
-Merges the training and the test sets to create one data set.
-Extracts only the measurements on the mean and standard deviation for each measurement.
-Uses descriptive activity names to name the activities in the data set
-Appropriately labels the data set with descriptive variable names.
-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Data set used
The data used for this assigment can be downloaded through the following sources:

-UCI Machine Learning Repository:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

-Direct link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Within the "UCI HAR Dataset" folder, the following .txt data files are used in this analysis:

-subject_test.txt     : Subject number list test

-X_test.txt           : test set

-y_test.txt           : Test labels

-subject_train.txt    : Subject number list train

-x_train.txt          : Training set

-y_train.txt          : Training labels

-activity_labels.txt  : Type of activity description

-features.txt         : List of features

# Contents repository
Besides this README.me document, this repository contains the following files:

-CodeBook.md    : The Code Book provides a full description of the relevant variables as listed in the "run_analysis.R" document.

-run_analysis.R : A full R script that walks through the execution of all 5 steps as stated in the assignment decription.

-tidy_data.txt  : The final product of this assignment. A tidy data set with the average of each variable for each activity and each subject.







