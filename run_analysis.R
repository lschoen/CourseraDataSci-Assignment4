# # One of the most exciting areas in all of data science right now is wearable computing 
# - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing 
# to develop the most advanced algorithms to attract new users. The data linked to from the 
# course website represent data collected from the accelerometers from the Samsung Galaxy S 
# smartphone. A full description is available at the site where the data was obtained: 
# #     
# #     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# # 
# # Here are the data for the project:
# #     
# #     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# # 
# # You should create one R script called run_analysis.R that does the following.
# # 
# # - Merges the training and the test sets to create one data set.
# # - Extracts only the measurements on the mean and standard deviation for each measurement.
# # - Uses descriptive activity names to name the activities in the data set
# # - Appropriately labels the data set with descriptive variable names.
# # - From the data set in step 4, creates a second, independent tidy data set with the average 
# #   of each variable for each activity and each subject.

###############################

library(plyr)
library(dplyr)

## Download and unzip the data
dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataURL, destfile = "./FUCI_dataset.zip", method = "curl")
unzip("./FUCI_dataset.zip", junkpaths = TRUE)
## load the training and test datasets
vNames <- read.table("./features.txt", stringsAsFactors = FALSE)    # 561 signal names
activityList <- read.table("./activity_labels.txt", col.names=c("index", "activityName"))
testSet <- read.table("./X_test.txt")               # raw data signals
testLabels <- read.table("./y_test.txt")            # activity labels
testSubjects <- read.table("./subject_test.txt")    # subject identifiers
trainSet <- read.table("./X_train.txt")
trainLabels <- read.table("./y_train.txt")
trainSubjects <- read.table("./subject_train.txt")

### PART 1 : Merge the training and the test sets to create one data set.

# Name each variable in the data sets using the names found in features.txt
# Use $V2 because the signals are numbered in the text file
setnames(testSet, names(testSet), vNames$V2)
setnames(trainSet, names(trainSet), vNames$V2)

# add the subject label from subject_test/train.txt
trainDF <- cbind(trainSubjects, trainSet)
names(trainDF)[1] <- "Subject"
testDF <- cbind(testSubjects, testSet)
names(testDF)[1] <- "Subject"

# add the activity labels to the first colum of the test and training data using cbind
trainDF <- cbind(trainLabels, trainDF)
names(trainDF)[1] <- "Activity"
testDF <- cbind(testLabels, testDF)
names(testDF)[1] <- "Activity"

## merge both test and training data- all we need to use is rbind, 
## since both sets have the same variables in the same order.
HARUSdata <- data.frame(rbind(testDF, trainDF))

### PART 2 : Extract only the measurements on the mean and standard deviation for each measurement.

## use regular expressions to detect if the variable contains the strings: 
## "[Mm]ean" or "[Ss]td" or "Subject" or "Activity". 
HARUS_sub <- HARUSdata[,grep("[Mm]ean|[Ss]td|Subject|Activity", names(HARUSdata))]

### PART 3 : Use descriptive activity names to name the activities in the data set
activityList[,2] <- as.character(activityList[,2])
HARUS_sub$Activity <- factor(HARUS_sub$Activity, 
                             levels=activityList[,1], 
                             labels=activityList[,2])

### PART 4 : Appropriately label the data set with descriptive variable names 
## done earlier in part 2, where we named all the variables from features.txt.
## Assuming the feature names provided are descriptive enough, or at least, more
## descriptive than V1, V2, V3, etc. 

### PART 5 : From the data set in step 4, creates a second, independent tidy 
### data set with the average of each variable for each activity and each subject
HARUS_melt <- melt(HARUS_sub, id=1:2)
tidyHARUS <- dcast(HARUS_melt, Activity + Subject ~ variable, mean)
## output the tidy data to a text file:
write.table(tidyHARUS, "tidyHARUS.txt", row.names = FALSE, quote = FALSE)
