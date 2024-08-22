---
title: "Course Project"
author: "Stephen Tao"
date: "2024-08-09"
output: html_document
---
```{r}
subject_train <- read.table("./train/subject_train.txt")
subject_train

X_train <- read.table("./train/X_train.txt")
X_train

Y_train <- read.table("./train/Y_train.txt")
Y_train
```
```{r}
subject_test <- read.table("./test/subject_test.txt")
subject_test

X_test <- read.table("./test/X_test.txt")
X_test

Y_test <- read.table("./test/Y_test.txt")
Y_test
```
```{r}
2947/7352
```
```{r}
# Set CRAN mirror
options(repos = c(CRAN = "https://cran.rstudio.com/"))

# Install necessary packages
if (!require("data.table")) install.packages("data.table")
if (!require("dplyr")) install.packages("dplyr")
```
```{r}
library(data.table)
```

```{r}
### CONVERT TRAINING DATASET TO DATA.TABLE###
subject_train1 <- as.data.table(subject_train)
X_train1 <- as.data.table(X_train)
Y_train1 <- as.data.table(Y_train)
```
```{r}
subject_train1
X_train1
Y_train1
```
```{r}
###COMBINE ALL TRAIN TABLES###
train <- cbind(subject_train1, X_train1, Y_train1)
train
```

```{r}
### CONVERT TEST DATASET TO DATA.TABLE###
subject_test1 <- as.data.table(subject_test)
X_test1 <- as.data.table(X_test)
Y_test1 <- as.data.table(Y_test)
```
```{r}
subject_test1
X_test1
Y_test1
```
```{r}
###COMBINE ALL TEST TABLES###
test <- cbind(subject_test1, X_test1, Y_test1)
test
```
# 1. Merges the training and the test sets to create one data set.
```{r}
### Merges the training and the test sets to create one data set. ###
combined_data <- rbind(train, test)
combined_data
```
```{r}
names(combined_data)
```

```{r}
features <- read.table("./features.txt")
features1 <- as.data.table(features)
features1
```
```{r}
# Read the feature names into a vector
feature_names <- features1[, V2]
feature_names
```
```{r}
# Assuming combined_data has 563 columns: 1 subject column, 561 feature columns, and 1 activity label column
# Create a vector of column names that includes "subject", the 561 feature names, and "activity"
column_names <- c("subject", feature_names, "activity")
# Assign the column names to combined_data
#setnames(combined_data, old = names(combined_data), new = column_names)
colnames(combined_data) <- column_names
head(combined_data)
```

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
```{r}
# Assuming 'combined_data' is your full dataset with 561 features and subject/activity columns

# Use grep to identify columns with "mean()" or "std()" in their names
mean_std_columns <- grep("mean\\(\\)|std\\(\\)", names(combined_data))

# Include the subject and activity columns as well (assuming they are the first and last columns)
mean_std_columns <- c(1, mean_std_columns, 563)

# Extract the relevant columns
mean_std_data <- combined_data[, ..mean_std_columns]
mean_std_data
```
```{r}
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity_labels
```
# 3. Uses descriptive activity names to name the activities in the data set
```{r}
mergedData = merge(mean_std_data, activity_labels,by.x="activity",by.y="V1", all.x = TRUE)
mergedData[, activity:= NULL]
setnames(mergedData,c("V2"),c("ActivityName"))
mergedData
```
# 4. Appropriately labels the data set with descriptive variable names.
```{r}
names(mergedData) <- gsub("^t", "Time", names(mergedData))
names(mergedData) <- gsub("^f", "Frequency", names(mergedData))
names(mergedData) <- gsub("Acc", "Accelerometer", names(mergedData))
names(mergedData) <- gsub("Gyro", "Gyroscope", names(mergedData))
names(mergedData) <- gsub("Mag", "Magnitude", names(mergedData))
names(mergedData) <- gsub("BodyBody", "Body", names(mergedData))
names(mergedData) <- gsub("mean\\(\\)", "Mean", names(mergedData), ignore.case = TRUE)
names(mergedData) <- gsub("std\\(\\)", "StandardDeviation", names(mergedData), ignore.case = TRUE)
names(mergedData) <- gsub("-X", "_X", names(mergedData))
names(mergedData) <- gsub("-Y", "_Y", names(mergedData))
names(mergedData) <- gsub("-Z", "_Z", names(mergedData))

mergedData
```

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
```{r}
### Group the mergedData set by subject and ActivityName ###
groupData <- group_by(mergedData, subject, ActivityName)
groupData
```
```{r}
# Calculate the mean for each feature (columns 2 to 67)
tidyData <- summarize_at(groupData, vars(1:66), mean)
tidyData
```
```{r}
# Specify the file path where you want to save the data
file_path <- "data/tidyData.txt"

# Save the tidy data set to a .txt file using write.table()
write.table(tidyData, file = file_path, row.names = FALSE)
```



