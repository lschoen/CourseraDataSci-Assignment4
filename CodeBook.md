# Getting and Cleaning Data - Course Project #
# Coursera Data Science Specialization #

## CODE BOOK ##

### Data Source and Description: ##
The data for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. It is taken from the Human Activity Recognition Using Smartphones (here referred to as HARUS) project at the Center for Machine Learning and Intelligent Systems, University of Califoria Irvine. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project was obtained on August 23, 2019 from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

-----

### Fields
This summarizes the data fields in tidyHARUS.txt :

#### Subject
> (Factor) The number of the subject performing the activity, from 1:30.

#### Activity
> (Factor) Description of activity performed by the subject:
>
> * WALKING : subject was walking during the observation
> * WALKING_UPSTAIRS : subject was walking up stairs during the observation
> * WALKING_DOWNSTAIRS : subject was walking down stairs during the observation
> * SITTING : subject moved from standing to sitting during the observation
> * STANDING : subject moved from sitting to standing during the observation
> * LAYING : subject moved from standing to laying down during the observation
>
> Video of these actions can be seen here: https://www.youtube.com/watch?v=XOEN9W05_4A 

#### Measurement averages
The averages of all the observations regarding only the measurements on the mean and standard deviation for each measurement, for each subject performing each action. (See README.md for a description of how this is performed by run_analysis.R):

>  * tBodyAcc.mean...X
> * tBodyAcc.mean...Y
> * tBodyAcc.mean...Z
> * tBodyAcc.std...X
> * tBodyAcc.std...Y
> * tBodyAcc.std...Z
> * tGravityAcc.mean...X
> * tGravityAcc.mean...Y
> * tGravityAcc.mean...Z
> * tGravityAcc.std...X
> * tGravityAcc.std...Y
> * tGravityAcc.std...Z
> * tBodyAccJerk.mean...X
> * tBodyAccJerk.mean...Y
> * tBodyAccJerk.mean...Z
> * tBodyAccJerk.std...X
> * tBodyAccJerk.std...Y
> * tBodyAccJerk.std...Z
> * tBodyGyro.mean...X
> * tBodyGyro.mean...Y
> * tBodyGyro.mean...Z
> * tBodyGyro.std...X
> * tBodyGyro.std...Y
> * tBodyGyro.std...Z
> * tBodyGyroJerk.mean...X
> * tBodyGyroJerk.mean...Y
> * tBodyGyroJerk.mean...Z
> * tBodyGyroJerk.std...X
> * tBodyGyroJerk.std...Y
> * tBodyGyroJerk.std...Z
> * tBodyAccMag.mean..
> * tBodyAccMag.std..
> * tGravityAccMag.mean..
> * tGravityAccMag.std..
> * tBodyAccJerkMag.mean..
> * tBodyAccJerkMag.std..
> * tBodyGyroMag.mean..
> * tBodyGyroMag.std..
> * tBodyGyroJerkMag.mean..
> * tBodyGyroJerkMag.std..
> * fBodyAcc.mean...X
> * fBodyAcc.mean...Y
> * fBodyAcc.mean...Z
> * fBodyAcc.std...X
> * fBodyAcc.std...Y
> * fBodyAcc.std...Z
> * fBodyAcc.meanFreq...X
> * fBodyAcc.meanFreq...Y
> * fBodyAcc.meanFreq...Z
> * fBodyAccJerk.mean...X
> * fBodyAccJerk.mean...Y
> * fBodyAccJerk.mean...Z
> * fBodyAccJerk.std...X
> * fBodyAccJerk.std...Y
> * fBodyAccJerk.std...Z
> * fBodyAccJerk.meanFreq...X
> * fBodyAccJerk.meanFreq...Y
> * fBodyAccJerk.meanFreq...Z
> * fBodyGyro.mean...X
> * fBodyGyro.mean...Y
> * fBodyGyro.mean...Z
> * fBodyGyro.std...X
> * fBodyGyro.std...Y
> * fBodyGyro.std...Z
> * fBodyGyro.meanFreq...X
> * fBodyGyro.meanFreq...Y
> * fBodyGyro.meanFreq...Z
> * fBodyAccMag.mean..
> * fBodyAccMag.std..
> * fBodyAccMag.meanFreq..
> * fBodyBodyAccJerkMag.mean..
> * fBodyBodyAccJerkMag.std..
> * fBodyBodyAccJerkMag.meanFreq..
> * fBodyBodyGyroMag.mean..
> * fBodyBodyGyroMag.std..
> * fBodyBodyGyroMag.meanFreq..
> * fBodyBodyGyroJerkMag.mean..
> * fBodyBodyGyroJerkMag.std..
> * fBodyBodyGyroJerkMag.meanFreq..
> * angle.tBodyAccMean.gravity.
> * angle.tBodyAccJerkMean..gravityMean.
> * angle.tBodyGyroMean.gravityMean.
> * angle.tBodyGyroJerkMean.gravityMean.
> * angle.X.gravityMean.
> * angle.Y.gravityMean.
> * angle.Z.gravityMean.





