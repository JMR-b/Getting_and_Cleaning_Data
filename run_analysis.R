# Getting and Cleaning Data Course Project

# Note: Please Read  CodeBook.md and README.md files of this repo which describes describe 
# the variables, the data, and any transformations or work that performed to clean up the data 
# and how the script works.


# Loading and Merging the training and the test data sets to create one data set. For this task,
# we assume that run_analysis.R script file and UCI HAR Dataset folder resides in the same folder.

# Loading training, test, subject, feature and activity data
training_set <- read.table("UCI HAR Dataset\\train\\X_train.txt")
train_labels <- read.table("UCI HAR Dataset\\train\\y_train.txt")
train_subjects <- read.table("UCI HAR Dataset\\train\\subject_train.txt")

test_set <- read.table("UCI HAR Dataset\\test\\X_test.txt")
test_labels <- read.table("UCI HAR Dataset\\test\\y_test.txt")
test_subjects <- read.table("UCI HAR Dataset\\test\\subject_test.txt")

features <- read.table("UCI HAR Dataset\\features.txt")
activities <- read.table("UCI HAR Dataset\\activity_labels.txt")

# Labeling the data set with descriptive variable names

colnames(training_set) <- features[,2]
colnames(train_labels) <- 'activity_id'
colnames(train_subjects) <- 'subject_id'

colnames(test_set) <- features[,2]
colnames(test_labels) <- 'activity_id'
colnames(test_subjects) <- 'subject_id'

colnames(activities) <- c('activity_id', 'activity_type')

# Merging the training and the test data sets to create one data set.
train_merged_set <- cbind(train_labels, train_subjects, training_set)
test_merged_set <- cbind(test_labels, test_subjects, test_set)
combined_set <- rbind(train_merged_set, test_merged_set )

# Extracting only the measurements on the mean and standard deviation for each measurement.
mean_std_data <- combined_set[c('activity_id', 'subject_id')]
mean_std_data <- cbind(mean_std_data, combined_set[grep('mean\\(\\)|std\\(\\)', colnames(combined_set))])

# Using descriptive activity names to name the activities in the data set 

mean_std_data <- merge(mean_std_data, activities, by = 'activity_id', all.x = T)


# Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

mean_std_data$subject_id <- as.factor(mean_std_data$subject_id)
tidy_set <- aggregate(mean_std_data, by = list(activity = mean_std_data$activity_type, subject = mean_std_data$subject_id), mean)
tidy_set <- subset(tidy_set, select = -c(subject_id, activity_type))

# Displaying result
View(tidy_set)

## Creating the file which has to be uploaded
write.table(tidy_set, "tidy_data.txt", row.names=FALSE, sep="\t")
