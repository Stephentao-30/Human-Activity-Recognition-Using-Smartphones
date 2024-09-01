# Load necessary libraries
library(data.table)
library(dplyr)

# Step 1: Downloads and Unzips the Dataset
dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("UCI HAR Dataset")) {
  download.file(dataset_url, destfile = "dataset.zip")
  unzip("dataset.zip")
}

# Read in the training and test data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Read the feature names and activity labels
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Convert training and test datasets to data.tables
subject_train <- as.data.table(subject_train)
train_data <- as.data.table(X_train)
train_labels <- as.data.table(Y_train)

subject_test <- as.data.table(subject_test)
test_data <- as.data.table(X_test)
test_labels <- as.data.table(Y_test)

# Step 2:Combine the training and test data
train <- cbind(subject_train, train_data, train_labels)
test <- cbind(subject_test, test_data, test_labels)
combined_data <- rbind(train, test)

# Step 3: Extract measurements on the mean and standard deviation
feature_names <- features[, V2]
column_names <- c("subject", feature_names, "activity")
colnames(combined_data) <- column_names

mean_std_columns <- grep("mean\\(\\)|std\\(\\)", names(combined_data))
mean_std_columns <- c(1, mean_std_columns, 563)  # Include subject and activity columns
mean_std_data <- combined_data[, ..mean_std_columns]

# Step 4: Add descriptive activity names
mergedData <- merge(mean_std_data, activity_labels, by.x="activity", by.y="V1", all.x=TRUE)
mergedData[, activity := NULL]
setnames(mergedData, "V2", "ActivityName")

# Step 5: Appropriately label the dataset with descriptive variable names
names(mergedData) <- gsub("^t", "Time", names(mergedData))
names(mergedData) <- gsub("^f", "Frequency", names(mergedData))
names(mergedData) <- gsub("Acc", "Accelerometer", names(mergedData))
names(mergedData) <- gsub("Gyro", "Gyroscope", names(mergedData))
names(mergedData) <- gsub("Mag", "Magnitude", names(mergedData))
names(mergedData) <- gsub("BodyBody", "Body", names(mergedData))
names(mergedData) <- gsub("mean\\(\\)", "Mean", names(mergedData), ignore.case=TRUE)
names(mergedData) <- gsub("std\\(\\)", "StandardDeviation", names(mergedData), ignore.case=TRUE)
names(mergedData) <- gsub("-X", "_X", names(mergedData))
names(mergedData) <- gsub("-Y", "_Y", names(mergedData))
names(mergedData) <- gsub("-Z", "_Z", names(mergedData))

# Step 6: Creates a second, independent tidy dataset with the average of each variable for each activity and each subject
groupData <- group_by(mergedData, subject, ActivityName)
tidyData <- summarize_at(groupData, vars(1:66), mean)

# Save the tidy dataset to a text file
write.table(tidyData, file="data/tidyData.txt", row.names=FALSE)