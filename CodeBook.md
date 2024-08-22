# Code Book for Tidy Data Set

## Overview

This code book describes the variables, data, and transformations performed to create the tidy data set `tidyData.txt` from the Human Activity Recognition Using Smartphones Data Set.

## Data Source

- **Original Data Source**: The data was collected from the accelerometers of the Samsung Galaxy S smartphone, as part of the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
- **Participants**: The experiments were conducted with 30 volunteers aged between 19 and 48 years. Each participant performed six activities while wearing the smartphone on their waist.

## Variables in the Tidy Data Set

### Identifiers
- **subject**: Integer. The ID of the subject (ranges from 1 to 30).
- **ActivityName**: Factor. The activity performed by the subject. The activities include:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

### Measurements
- **TimeBodyAccelerometerMean_X, TimeBodyAccelerometerMean_Y, TimeBodyAccelerometerMean_Z**: Numeric. Mean of the body acceleration signal in the X, Y, and Z directions.
- **TimeBodyAccelerometerStandardDeviation_X, TimeBodyAccelerometerStandardDeviation_Y, TimeBodyAccelerometerStandardDeviation_Z**: Numeric. Standard deviation of the body acceleration signal in the X, Y, and Z directions.
- **TimeGravityAccelerometerMean_X, TimeGravityAccelerometerMean_Y, TimeGravityAccelerometerMean_Z**: Numeric. Mean of the gravity acceleration signal in the X, Y, and Z directions.
- **TimeGravityAccelerometerStandardDeviation_X, TimeGravityAccelerometerStandardDeviation_Y, TimeGravityAccelerometerStandardDeviation_Z**: Numeric. Standard deviation of the gravity acceleration signal in the X, Y, and Z directions.
- **FrequencyBodyAccelerometerMean_X, FrequencyBodyAccelerometerMean_Y, FrequencyBodyAccelerometerMean_Z**: Numeric. Mean of the body acceleration signal in the X, Y, and Z directions in the frequency domain.
- **...** (Continue listing all the relevant variables.)

### Transformations and Cleaning Steps
1. **Merging Datasets**: The training and test datasets were merged to create one data set.
2. **Extracting Measurements**: Measurements on the mean and standard deviation for each measurement were extracted using regular expressions.
3. **Using Descriptive Activity Names**: The activity labels were replaced with descriptive activity names.
4. **Labeling Data**: The data set was labeled with descriptive variable names, replacing abbreviations with full words and correcting the format.
5. **Creating Tidy Data Set**: A second tidy data set was created by calculating the average of each variable for each activity and each subject.

## Summary

The resulting tidy data set (`tidyData.txt`) contains 180 rows (30 subjects * 6 activities) and 68 columns (66 features + subject + activity). Each row represents the average value of each measurement for each subject-activity pair.
