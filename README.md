## Getting and Cleaning Data Course Project.
============================================

One of the most exciting areas in all of data science right now is wearable computing - see for example this article (http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The purpose of this project is to demonstrate your ability to collect, work with, and clean the above said data set. 

This repo contains:

1) run_analysis.R script file.
2) a tidy data set that can be used for later analysis, 
3) a codebook that describes the variables, the data, and any transformations or work that you performed to clean up the data 
4) a README.md file.

Create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject 

Please use the following steps to reproduce the results:

1. Open the R script run_analysis.r using RStudio
2. Change the parameter of the setwd function call to your working directory/folder
3. Please make sure UCI HAR Dataset and run_analysis.R in the same parent folder
4. Run the R script run_analysis.R using source("run_analysis.R") command in RStudio.
5. "tidy_data.txt"" file contains result of tidy data set wiil be created.

.
