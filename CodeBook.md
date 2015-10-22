Data Dictionary - Getting and Cleaning Data
Project 5 - Tidy Data Set

Original Data Source Info:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


Created Tidy Data Set Variables:

"Subject" 
		identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
"Activity" 
		1 WALKING
		2 WALKING_UPSTAIRS
		3 WALKING_DOWNSTAIRS
		4 SITTING
		5 STANDING
		6 LAYING
		
The mean of the following variables was computed. Data was groupedby subject and by a particular activity.
"tBodyAcc-mean()-X" 

"tBodyAcc-mean()-Y" 

"tBodyAcc-mean()-Z" 

"tBodyAcc-std()-X" 

"tBodyAcc-std()-Y" 

"tBodyAcc-std()-Z" 

"tGravityAcc-mean()-X" 

"tGravityAcc-mean()-Y" 

"tGravityAcc-mean()-Z" 

"tGravityAcc-std()-X" 

"tGravityAcc-std()-Y" 

"tGravityAcc-std()-Z" 

"tBodyAccJerk-mean()-X" 

"tBodyAccJerk-mean()-Y" 

"tBodyAccJerk-mean()-Z" 

"tBodyAccJerk-std()-X" 

"tBodyAccJerk-std()-Y" 

"tBodyAccJerk-std()-Z" 

"tBodyGyro-mean()-X" 

"tBodyGyro-mean()-Y" 

"tBodyGyro-mean()-Z" 

"tBodyGyro-std()-X" 

"tBodyGyro-std()-Y" 

"tBodyGyro-std()-Z" 

"tBodyGyroJerk-mean()-X" 

"tBodyGyroJerk-mean()-Y" 

"tBodyGyroJerk-mean()-Z" 

"tBodyGyroJerk-std()-X" 

"tBodyGyroJerk-std()-Y" 

"tBodyGyroJerk-std()-Z" 

"tBodyAccMag-mean()" 

"tBodyAccMag-std()" 

"tGravityAccMag-mean()" 

"tGravityAccMag-std()" 

"tBodyAccJerkMag-mean()" 

"tBodyAccJerkMag-std()" 

"tBodyGyroMag-mean()" 

"tBodyGyroMag-std()" 

"tBodyGyroJerkMag-mean()" 

"tBodyGyroJerkMag-std()" 

"fBodyAcc-mean()-X" 

"fBodyAcc-mean()-Y" 

"fBodyAcc-mean()-Z" 

"fBodyAcc-std()-X" 

"fBodyAcc-std()-Y" 

"fBodyAcc-std()-Z" 

"fBodyAcc-meanFreq()-X" 

"fBodyAcc-meanFreq()-Y" 

"fBodyAcc-meanFreq()-Z" 

"fBodyAccJerk-mean()-X" 

"fBodyAccJerk-mean()-Y" 

"fBodyAccJerk-mean()-Z" 

"fBodyAccJerk-std()-X" 

"fBodyAccJerk-std()-Y" 

"fBodyAccJerk-std()-Z" 

"fBodyAccJerk-meanFreq()-X" 

"fBodyAccJerk-meanFreq()-Y" 

"fBodyAccJerk-meanFreq()-Z" 

"fBodyGyro-mean()-X" 

"fBodyGyro-mean()-Y" 

"fBodyGyro-mean()-Z" 

"fBodyGyro-std()-X" 

"fBodyGyro-std()-Y" 

"fBodyGyro-std()-Z" 

"fBodyGyro-meanFreq()-X" 

"fBodyGyro-meanFreq()-Y" 

"fBodyGyro-meanFreq()-Z" 

"fBodyAccMag-mean()" 

"fBodyAccMag-std()" 

"fBodyAccMag-meanFreq()" 

"fBodyBodyAccJerkMag-mean()" 

"fBodyBodyAccJerkMag-std()" 

"fBodyBodyAccJerkMag-meanFreq()" 

"fBodyBodyGyroMag-mean()" 

"fBodyBodyGyroMag-std()" 

"fBodyBodyGyroMag-meanFreq()" 

"fBodyBodyGyroJerkMag-mean()" 

"fBodyBodyGyroJerkMag-std()" 

"fBodyBodyGyroJerkMag-meanFreq()"

Notes from original features_info.txt. In the created tidy dataset only variables with the mean or std as part of the variable name was examined.
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time 

domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order 

low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 

tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 

fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.