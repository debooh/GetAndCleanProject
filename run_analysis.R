#################################################################################################
# Debooh Hughes
# 10/5/2015
#
#################################################################################################

#################################################################################################
# create one R script called run_analysis.R that does the following: 
#
# 1.Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of
# each variable for each activity and each subject.
#################################################################################################

# Get the labels
theLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
uniqueLabels <- nrow(unique(theLabels))

# Get the features
theFeatures <- read.table("UCI HAR Dataset/features.txt")[,2]

# Look at the features - I only care about the mean and standard deviation measurements
# grab the ones that say "mean" or "std"
# this gives you a logical vector with TRUE where mean/std
subsettedFeatures <- grepl("mean|std", theFeatures )
#print(subsettedFeatures)

#now read the actual data
# X_test and X_train contain measurement data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")

# Y_test and Y_train contain the training labels
Y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
Y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# subject_test and subject_train contain the person who performed the test (just numbers)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# now merge the data sets
XData <- rbind(X_train, X_test)
YData <- rbind(Y_train, Y_test)
SData <- rbind(subject_test, subject_train)
uniqueSubjects <- nrow(unique(SData))

# get the mean/std data set
names(XData) = theFeatures 
# use the logical vector to get only the data i am interested in - std or mean
XData <- XData[, subsettedFeatures]

#Extract the correct activity from theLabels and use it for each row in YData
YData[,1] = theLabels [YData[,1], 2]
names(YData) <- "Activity"
names(SData) <- "Subject"

# Put it altogether
AllData <- cbind(SData, YData, XData)



# create new data frame for step 5
theResultSet <- AllData[1: (uniqueSubjects*uniqueLabels), ]
 
currentRow = 1
# only look at one instance of each subject
uniqueSData = unique(SData)[,1]

# find out how many columns i need to get the average of
numCols = dim(AllData)[2]


# want to do this the R way but not going well
#bySubAct <- AllData %>% group_by(Subject,Activity)
#bySubAct %>% summarise_each(funs(mean))

# summarise not working - do it by using nested for loops
# there are 30 subjects and 6 activities, therefore 30*6 = 180 rows
# create an outer loop - this will represent the current subject (in this example - 30)
# create an inner loop - this will represent the current activity (in this example - 6)
for (currSubject in 1:uniqueSubjects ) {
	for (currActivity in 1:uniqueLabels ) {

		# for current row
			# get current subject
		theResultSet [currentRow , 1] = uniqueSData [currSubject]

			# get current activity
		theResultSet [currentRow , 2] = theLabels[currActivity , 2]

			# get data for all rows/cols with current subject and activity
		impInfo <- AllData[AllData$Subject==currSubject  & AllData$Activity==theLabels[currActivity , 2], ]

			# compute mean of all columns in tmp and store in approp spot in current row
			# this is very powerful - does all the work!
		theResultSet [currentRow , 3:numCols] <- colMeans(impInfo [, 3:numCols])

			# bump up current index
		currentRow <- currentRow + 1
	}
	
}

# finally, write it out to a file
write.table(theResultSet , "hughesTidyData.txt", row.name = FALSE)



