---
title: "Getting and Cleaning Data - Course Project"
author: "Sreekanth Jujare"
date: "Sunday, June 21, 2015"
output: html_document
---

# Data source
Data for this course is acquired from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Data was generated as part of the project:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.*

# Variables names

* Variable names with 't' prefix indicate measurements captured in time domain.
* Variable names with 'f' prefix indicate measurements captured in frequency domain.
* characters 'X', 'Y' and 'Z' in the variable names indicate the measurement along X, Y and Z axes respectively.
* Acc in the names stand for Accelerometer measurement
* Gyro in the names stand for Gyroscope measurement
* Mag in the names stand for Magnetometer measurement
* Jerk in the names stand for Jerk signals
* mean in the names indicate that the measurement is mean value.
* std in the names indicate that the measurement is standard deviation value.
* Subject indicates the identity of the subject involved in the observation.
* Activity indicates the activity performed in the observation.

## Units
* All variables except 'Subject' and 'Activity' are of numeric type. These are averages of normalized values which are bounded within [-1, 1].
* Subject is of integer type which indicates the identity of the subject involved in the observation.
* Activity is of Factor type which indicates the type of activity being performed in the observation.

# Preparing tidy data

Following tasks were performed in the run_analysis.R script:

1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement.
3. Used descriptive activity names to name the activities in the data set
4. Appropriately labeled the data set with descriptive variable names. 
5. Generated a second, indepedent tidy data set with the average of each variable for each activity and each subject.

Step by Step description of code:

1. Loaded data from files "activity_labels.txt" and "features.txt".
2. Selected only those columns that represented mean or standard deviation measurements from the data of "X_train.txt" file.
3. Loaded data from "y_train.txt" file. 
4. Loaded data from "subject_train.txt" file.
5. Generated descriptive activity labels from the data of "activity_labels.txt" and "y_train.txt"
6. Clubbed the columns of the data generated in steps 2, 4 and 5 to generate trainset dataset.
7. Repeated Steps 2-6 on testing data to generate testing dataset.
8. Merged training and testing datasets to generate first complete dataset.
9. Generated a second, indepedent tidy data set with the average of each variable for each activity and each subject.
