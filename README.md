# GetAndCleanProject

## Hughes - ReadMe file 
##  Getting and Cleaning Data - Project
-----------

### Initial Instructions - run_analysis.R  does the following:

* first thing
* second thing
* third thing

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Data Files Used:
* UCI HAR Dataset/activity_labels.txt
* UCI HAR Dataset/features.txt
* UCI HAR Dataset/test/X_test.txt
* UCI HAR Dataset/train/X_train.txt
* UCI HAR Dataset/train/y_train.txt
* UCI HAR Dataset/test/y_test.txt
* UCI HAR Dataset/test/subject_test.txt
* UCI HAR Dataset/train/subject_train.txt

### Program Pseudocode

* Get the labels from the file
* find out how many unique labels there are

* Get the features
* Look at the features - I only care about the mean and standard deviation measurements
* grab the ones that say "mean" or "std"
* Get a logical vector with TRUE where mean/std 
* this will be subsetted on variables we care about

* now read the actual data
* X_test and X_train contain measurement data
* Y_test and Y_train contain the training labels
* subject_test and subject_train contain the person who performed the test (just numbers)


* now merge the 3 data sets - x, y and subject
* find out how many unique subjects there are

* get the mean/std data set
* use the logical vector to get only the data i am interested in - std or mean

* Extract the correct activity from theLabels and use it for each row in YData
* Give meaningful names

* Bind the meaningful data  all together

* create new data frame - tidy the data

* need to get averages for the data grouped by subject and activity
* find out how many columns i need to get the average of

* there are 30 subjects and 6 activities, therefore 30*6 = 180 rows
* create an outer loop - this will represent the current subject (in this example - 30)
* create an inner loop - this will represent the current activity (in this example - 6)

* Loop
* for current subject
* for current row
* get current subject
* get current activity
* get data for all rows/cols with current subject and activity
* compute mean of all columns in tmp and store in approp spot in current row
* bump up current row
* end loop

* finally, write it out to a file





