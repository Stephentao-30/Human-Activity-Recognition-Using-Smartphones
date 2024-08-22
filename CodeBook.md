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

The tidy data set contains variables derived from the original dataset, which are measurements of mean and standard deviation values. The measurements include the following types:

#### Time Domain Signals

1. **Body Accelerometer (Time Domain)**:
   - **Mean**: Mean body acceleration signal along X, Y, and Z axes.
     - Features: `TimeBodyAccelerometer-Mean_X`, `TimeBodyAccelerometer-Mean_Y`, `TimeBodyAccelerometer-Mean_Z`
   - **Standard Deviation**: Standard deviation of the body acceleration signal along X, Y, and Z axes.
     - Features: `TimeBodyAccelerometer-StandardDeviation_X`, `TimeBodyAccelerometer-StandardDeviation_Y`, `TimeBodyAccelerometer-StandardDeviation_Z`

2. **Gravity Accelerometer (Time Domain)**:
   - **Mean**: Mean gravity acceleration signal along X, Y, and Z axes.
     - Features: `TimeGravityAccelerometer-Mean_X`, `TimeGravityAccelerometer-Mean_Y`, `TimeGravityAccelerometer-Mean_Z`
   - **Standard Deviation**: Standard deviation of the gravity acceleration signal along X, Y, and Z axes.
     - Features: `TimeGravityAccelerometer-StandardDeviation_X`, `TimeGravityAccelerometer-StandardDeviation_Y`, `TimeGravityAccelerometer-StandardDeviation_Z`

3. **Body Accelerometer Jerk (Time Domain)**:
   - **Mean**: Mean body linear acceleration jerk (sudden movement) signal along X, Y, and Z axes.
     - Features: `TimeBodyAccelerometerJerk-Mean_X`, `TimeBodyAccelerometerJerk-Mean_Y`, `TimeBodyAccelerometerJerk-Mean_Z`
   - **Standard Deviation**: Standard deviation of body linear acceleration jerk signal along X, Y, and Z axes.
     - Features: `TimeBodyAccelerometerJerk-StandardDeviation_X`, `TimeBodyAccelerometerJerk-StandardDeviation_Y`, `TimeBodyAccelerometerJerk-StandardDeviation_Z`

4. **Body Gyroscope (Time Domain)**:
   - **Mean**: Mean body gyroscope signal along X, Y, and Z axes.
     - Features: `TimeBodyGyroscope-Mean_X`, `TimeBodyGyroscope-Mean_Y`, `TimeBodyGyroscope-Mean_Z`
   - **Standard Deviation**: Standard deviation of body gyroscope signal along X, Y, and Z axes.
     - Features: `TimeBodyGyroscope-StandardDeviation_X`, `TimeBodyGyroscope-StandardDeviation_Y`, `TimeBodyGyroscope-StandardDeviation_Z`

5. **Body Gyroscope Jerk (Time Domain)**:
   - **Mean**: Mean body gyroscope jerk signal along X, Y, and Z axes.
     - Features: `TimeBodyGyroscopeJerk-Mean_X`, `TimeBodyGyroscopeJerk-Mean_Y`, `TimeBodyGyroscopeJerk-Mean_Z`
   - **Standard Deviation**: Standard deviation of body gyroscope jerk signal along X, Y, and Z axes.
     - Features: `TimeBodyGyroscopeJerk-StandardDeviation_X`, `TimeBodyGyroscopeJerk-StandardDeviation_Y`, `TimeBodyGyroscopeJerk-StandardDeviation_Z`

6. **Magnitude Signals (Time Domain)**:
   - **Body Accelerometer Magnitude**:
     - **Mean**: Mean magnitude of the body accelerometer signal.
       - Feature: `TimeBodyAccelerometerMagnitude-Mean`
     - **Standard Deviation**: Standard deviation of the magnitude of the body accelerometer signal.
       - Feature: `TimeBodyAccelerometerMagnitude-StandardDeviation`
   - **Gravity Accelerometer Magnitude**:
     - **Mean**: Mean magnitude of the gravity accelerometer signal.
       - Feature: `TimeGravityAccelerometerMagnitude-Mean`
     - **Standard Deviation**: Standard deviation of the magnitude of the gravity accelerometer signal.
       - Feature: `TimeGravityAccelerometerMagnitude-StandardDeviation`
   - **Body Accelerometer Jerk Magnitude**:
     - **Mean**: Mean magnitude of the body accelerometer jerk signal.
       - Feature: `TimeBodyAccelerometerJerkMagnitude-Mean`
     - **Standard Deviation**: Standard deviation of the magnitude of the body accelerometer jerk signal.
       - Feature: `TimeBodyAccelerometerJerkMagnitude-StandardDeviation`
   - **Body Gyroscope Magnitude**:
     - **Mean**: Mean magnitude of the body gyroscope signal.
       - Feature: `TimeBodyGyroscopeMagnitude-Mean`
     - **Standard Deviation**: Standard deviation of the magnitude of the body gyroscope signal.
       - Feature: `TimeBodyGyroscopeMagnitude-StandardDeviation`
   - **Body Gyroscope Jerk Magnitude**:
     - **Mean**: Mean magnitude of the body gyroscope jerk signal.
       - Feature: `TimeBodyGyroscopeJerkMagnitude-Mean`
     - **Standard Deviation**: Standard deviation of the magnitude of the body gyroscope jerk signal.
       - Feature: `TimeBodyGyroscopeJerkMagnitude-StandardDeviation`

### Frequency Domain Signals

1. **Body Accelerometer (Frequency Domain)**:
   - **Mean**: Mean body acceleration signal along X, Y, and Z axes in the frequency domain.
     - **Features**: `FrequencyBodyAccelerometer-Mean_X`, `FrequencyBodyAccelerometer-Mean_Y`, `FrequencyBodyAccelerometer-Mean_Z`
   - **Standard Deviation**: Standard deviation of the body acceleration signal along X, Y, and Z axes in the frequency domain.
     - **Features**: `FrequencyBodyAccelerometer-StandardDeviation_X`, `FrequencyBodyAccelerometer-StandardDeviation_Y`, `FrequencyBodyAccelerometer-StandardDeviation_Z`

2. **Body Accelerometer Jerk (Frequency Domain)**:
   - **Mean**: Mean body linear acceleration jerk signal along X, Y, and Z axes in the frequency domain.
     - **Features**: `FrequencyBodyAccelerometerJerk-Mean_X`, `FrequencyBodyAccelerometerJerk-Mean_Y`, `FrequencyBodyAccelerometerJerk-Mean_Z`
   - **Standard Deviation**: Standard deviation of body linear acceleration jerk signal along X, Y, and Z axes in the frequency domain.
     - **Features**: `FrequencyBodyAccelerometerJerk-StandardDeviation_X`, `FrequencyBodyAccelerometerJerk-StandardDeviation_Y`, `FrequencyBodyAccelerometerJerk-StandardDeviation_Z`

3. **Body Gyroscope (Frequency Domain)**:
   - **Mean**: Mean body gyroscope signal along X, Y, and Z axes in the frequency domain.
     - **Features**: `FrequencyBodyGyroscope-Mean_X`, `FrequencyBodyGyroscope-Mean_Y`, `FrequencyBodyGyroscope-Mean_Z`
   - **Standard Deviation**: Standard deviation of body gyroscope signal along X, Y, and Z axes in the frequency domain.
     - **Features**: `FrequencyBodyGyroscope-StandardDeviation_X`, `FrequencyBodyGyroscope-StandardDeviation_Y`, `FrequencyBodyGyroscope-StandardDeviation_Z`

4. **Magnitude Signals (Frequency Domain)**:
   - **Body Accelerometer Magnitude**:
     - **Mean**: Mean magnitude of the body accelerometer signal in the frequency domain.
       - **Feature**: `FrequencyBodyAccelerometerMagnitude-Mean`
     - **Standard Deviation**: Standard deviation of the magnitude of the body accelerometer signal in the frequency domain.
       - **Feature**: `FrequencyBodyAccelerometerMagnitude-StandardDeviation`
   - **Body Accelerometer Jerk Magnitude**:
     - **Mean**: Mean magnitude of the body accelerometer jerk signal in the frequency domain.
       - **Feature**: `FrequencyBodyAccelerometerJerkMagnitude-Mean`
     - **Standard Deviation**: Standard deviation of the magnitude of the body accelerometer jerk signal in the frequency domain.
       - **Feature**: `FrequencyBodyAccelerometerJerkMagnitude-StandardDeviation`
   - **Body Gyroscope Magnitude**:
     - **Mean**: Mean magnitude of the body gyroscope signal in the frequency domain.
       - **Feature**: `FrequencyBodyGyroscopeMagnitude-Mean`
     - **Standard Deviation**: Standard deviation of the magnitude of the body gyroscope signal in the frequency domain.
       - **Feature**: `FrequencyBodyGyroscopeMagnitude-StandardDeviation`
   - **Body Gyroscope Jerk Magnitude**:
     - **Mean**: Mean magnitude of the body gyroscope jerk signal in the frequency domain.
       - **Feature**: `FrequencyBodyGyroscopeJerkMagnitude-Mean`
     - **Standard Deviation**: Standard deviation of the magnitude of the body gyroscope jerk signal in the frequency domain.
       - **Feature**: `FrequencyBodyGyroscopeJerkMagnitude-StandardDeviation`

### Summary

- **Time Domain**: Variables start with `Time`, representing measurements in the time domain.
- **Frequency Domain**: Variables start with `Frequency`, representing measurements in the frequency domain.
- **Magnitude**: Variables ending in `Magnitude` represent the magnitude of the signals.
- **Mean and Standard Deviation**: Each measurement type has corresponding `Mean` and `Standard Deviation` variables.

### Transformations and Cleaning Steps
1. **Merging Datasets**: The training and test datasets were merged to create one data set.
2. **Extracting Measurements**: Measurements on the mean and standard deviation for each measurement were extracted using regular expressions.
3. **Using Descriptive Activity Names**: The activity labels were replaced with descriptive activity names.
4. **Labeling Data**: The data set was labeled with descriptive variable names, replacing abbreviations with full words and correcting the format.
5. **Creating Tidy Data Set**: A second tidy data set was created by calculating the average of each variable for each activity and each subject.

## Summary

The resulting tidy data set (`tidyData.txt`) contains 180 rows (30 subjects * 6 activities) and 68 columns (66 features + subject + activity). Each row represents the average value of each measurement for each subject-activity pair.
