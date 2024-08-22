# Course Project: Human-Activity-Recognition-Using-Smartphones

## Overview

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare a tidy data set that can be used for later analysis. The data used in this project is collected from the accelerometers of the Samsung Galaxy S smartphone. The final output of this project is a tidy data set containing the average of each variable for each activity and each subject.

## Dataset

The experiments have been carried out with a group of 30 volunteers aged between 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone (Samsung Galaxy S II) on their waist. The smartphone's accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly partitioned into training (70%) and test (30%) data sets. The data set provided here is derived from the Human Activity Recognition Using Smartphones Data Set available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Project Files

This repository contains the following files:

- `CourseProject.R`: R script that performs the data cleaning and analysis.
- `tidyData.txt`: The final tidy data set created by the `run_analysis.R` script.
- `CodeBook.md`: Describes the variables, data, and transformations performed to clean the data.
- `README.md`: This file, providing an overview of the project and instructions on how to use the files.

## How to Run the Script

### Prerequisites

Before running the `run_analysis.R` script, ensure that the Samsung data set is in your working directory. You can download the data from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it into your working directory.

### Steps to Run

1. **Download and Unzip the Data Set**:
   - Download the dataset from the above link.
   - Unzip it in your R working directory.

2. **Run the Script**:
   - Open the `CourseProject.R` script in RStudio or your preferred R environment.
   - Run the script by sourcing it or executing it line by line.

3. **Output**:
   - The script will generate a tidy data set and save it as `tidyData.txt` in the `data` folder of your working directory.
   - The tidy data set contains the average of each variable for each activity and each subject.

### Script Details

The `CourseProject.R` script performs the following steps:

1. **Merges the Training and the Test Sets**: Combines the training and test datasets to create one data set.
2. **Extracts Mean and Standard Deviation Measurements**: Extracts only the measurements on the mean and standard deviation for each measurement.
3. **Applies Descriptive Activity Names**: Replaces activity codes with descriptive activity names.
4. **Labels the Data Set**: Appropriately labels the data set with descriptive variable names.
5. **Creates a Tidy Data Set**: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Dependencies

The following R packages are required to run the script:

- `data.table`: For efficient data manipulation.
- `dplyr`: For data transformation operations like `group_by` and `summarize`.

If these packages are not installed, the script will attempt to install them.

```r
# Set CRAN mirror
options(repos = c(CRAN = "https://cran.rstudio.com/"))

# Install necessary packages
if (!require("data.table")) install.packages("data.table")
if (!require("dplyr")) install.packages("dplyr")
