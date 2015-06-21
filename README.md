---
title: "ReadMe"
author: "Sreekanth Jujare"
date: "Sunday, June 21, 2015"
output: html_document
---

# Setup
run_analysis.R script should be copied to the directory 'UCI HAR Dataset' containing 'test' and 'train' folders along with the "activity_labels.txt", "features.txt", "features_info.txt" files.

# Following tasks were performed in the run_analysis.R script:

1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement.
3. Used descriptive activity names to name the activities in the data set
4. Appropriately labeled the data set with descriptive variable names. 
5. Generated a second, indepedent tidy data set with the average of each variable for each activity and each subject.

# How the script works

1. Loaded data from files "activity_labels.txt" and "features.txt".
2. Selected only those columns that represented mean or standard deviation measurements from the data of "X_train.txt" file.
3. Loaded data from "y_train.txt" file. 
4. Loaded data from "subject_train.txt" file.
5. Generated descriptive activity labels from the data of "activity_labels.txt" and "y_train.txt"
6. Clubbed the columns of the data generated in steps 2, 4 and 5 to generate trainset dataset.
7. Repeated Steps 2-6 on testing data to generate testing dataset.
8. Merged training and testing datasets to generate first complete dataset.
9. Generated a second, indepedent tidy data set with the average of each variable for each activity and each subject.