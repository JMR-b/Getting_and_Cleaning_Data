# CodeBook 
============
Executing "run_analysis.R" of this repo creates the following variables.

The script will load the training, test, features, and activity data sets and creates the following variables:

* training_set 
* train_labels 
* train_subjects

* test_set
* test_labels
* test_subjects

* features
* activities


After labeling the data sets with descriptive variable names, we will merge the training and the test data sets to create the following variables:

train_merged_set
test_merged_set
combined_set

To extract  measurements on the mean and standard deviation for each measurement, we create the following:

mean_std_data


Finally, we create a second, independent tidy data set called "tidy_set"with the average of each variable for each activity and each subject.

tidy_set


Description of each variable that is produced by this script:

* activities: Contains the data from the file "activity_labels.txt""
* combined_set : Contains the data after merging train_merged_set and test_merged_set
* features : Contains the data from the file "features.txt""
* mean_std_data : Contains the data afterextracting the measurements on the mean and standard deviation for each measurement.
* test_labels: Contains the data from the file "y_test.txt""
* test_merged_set : Contains the data after merging test_labels, test_subjects and test_set 
* test_set : Contains the data from the file "X_test.txt""
* test_subjects : Contains the data from the file "subject_test.txt"
* tidy_set : Contains the data from the file "X_train.txt""
* train_labels : Contains the data from the file "y_train.txt""
* train_merged_set : Contains the data after merging train_labels, train_subjects and training_set 
* train_subjects : Contains the data from the file "subject_train.txt""
* trainig_set: Contains the data from the file "X_train.txt""


  