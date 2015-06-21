## Make sure to Set the working directory to point to the directory 'UCI HAR Dataset'

## Load data from files

## Activity labels
activity_labels <- read.table("activity_labels.txt", col.names=c("id", "name"))

## Features
features <- read.table("features.txt", col.names=c("id", "name"), colClasses = c("integer", "character"))

## Training set
X_train <- read.table(file.path(getwd(), "train", "X_train.txt"), col.names = features[,2])
X_train <- select(X_train, contains(".mean."), contains(".std."))
y_train <- read.table(file.path(getwd(), "train", "y_train.txt"), col.names = c("id"))
subject_train <- read.table(file.path(getwd(), "train", "subject_train.txt"), col.names = c("Subject"))
y_train_labeled = data.frame(Activity = activity_labels[y_train[,], 2], row.names = NULL)
train <- cbind(X_train, subject_train, y_train_labeled)

## Testing set
X_test <- read.table(file.path(getwd(), "test", "X_test.txt"), col.names = features[,2])
X_test <- select(X_test, contains(".mean."), contains(".std."))
y_test <- read.table(file.path(getwd(), "test", "y_test.txt"), col.names = c("id"))
subject_test <- read.table(file.path(getwd(), "test", "subject_test.txt"), col.names = c("Subject"))
y_test_labeled = data.frame(Activity = activity_labels[y_test[,], 2], row.names = NULL)
test <- cbind(X_test, subject_test, y_test_labeled)

## Merge training and testing data sets
dataset <- rbind(train, test)
colnames(dataset) <- make.names(colnames(dataset), unique = TRUE)

## Creating tidy dataset
tidyData <- aggregate(. ~ Subject + Activity, dataset, mean, na.rm = TRUE)

## Write tidy dataset to a file
write.table(tidyData, file = "tidyData.txt", row.name=FALSE)

