# Course Project: Human-Activity-Recognition-Using-Smartphones

## Overview

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare a tidy data set that can be used for later analysis. The data used in this project is collected from the accelerometers of the Samsung Galaxy S smartphone. The final output of this project is a tidy data set containing the average of each variable for each activity and each subject.

## Dataset

The experiments have been carried out with a group of 30 volunteers aged between 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone (Samsung Galaxy S II) on their waist. The smartphone's accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly partitioned into training (70%) and test (30%) data sets. The data set provided here is derived from the Human Activity Recognition Using Smartphones Data Set available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Project Files

This repository contains the following files:

- `run_analysis.R`: R script that performs the data cleaning and analysis.
- `tidyData.txt`: The final tidy data set created by the `run_analysis.R` script.
- `CodeBook.md`: Describes the variables, data, and transformations performed to clean the data.
- `README.md`: This file, providing an overview of the project and instructions on how to use the files.

## How to Run the Script

### Prerequisites

The script will automatically download and unzip the dataset, so no manual download is required.

### Steps to Run

1. **Run the Script**:
   - Simply run the `run_analysis.R` script in RStudio or your preferred R environment.
   - The script will automatically download the dataset, perform the necessary data cleaning, and generate the tidy dataset.

2. **Output**:
   - The script generates a tidy dataset and saves it as `tidyData.txt` in the `data` folder of your working directory.
   - The tidy dataset contains the average of each variable for each activity and each subject.

### Script Details

The `run_analysis.R` script performs the following steps:

1. **Downloads and Unzips the Dataset**: The script checks if the dataset is already present; if not, it downloads and unzips it.
2. **Merges the Training and Test Sets**: Combines the training and test datasets to create one comprehensive dataset.
3. **Extracts Mean and Standard Deviation Measurements**: Extracts only the measurements on the mean and standard deviation for each measurement.
4. **Applies Descriptive Activity Names**: Replaces activity codes with descriptive activity names.
5. **Labels the Data Set**: Appropriately labels the dataset with descriptive variable names.
6. **Creates a Tidy Data Set**: From the cleaned dataset, the script creates a second, independent tidy dataset with the average of each variable for each activity and each subject.

### Dependencies

The following R packages are required to run the script:

- `data.table`: For efficient data manipulation.
- `dplyr`: For data transformation operations like `group_by` and `summarize`.

If these packages are not installed, the script will automatically install them.

```r
# Set CRAN mirror
options(repos = c(CRAN = "https://cran.rstudio.com/"))

# Install necessary packages
if (!require("data.table")) install.packages("data.table")
if (!require("dplyr")) install.packages("dplyr")
