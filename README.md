# Getting and Cleaning Data - Course Project
## Coursera Data Science Specialization

This is the course project for Coursera's Getting and Cleaning Data class. The R script run_analysis.R does the following:
1. Downloads and unzips the data
2. Loads the required training and test data sets, and their corresponding variable names 3. Loads the subject and activity factor variables and merges them with each data set
4. Merges the test and training data sets
5. Selects only the variables relating to mean and standard deviation measurements
6. Replaces the Activity factor variable with descriptive activity names
7. Melts and casts the dataset to creates a second, independent tidy data set with the average of each variable for each activity and each subject
8. Outputs the resulting tidy data set to a text file

Output of the script is saved in this repo as tidyHARUS.txt

