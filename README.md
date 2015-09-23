# class_assignment

The run_anlysis.R script requires that the following data is available in your working directory: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The run_analysis script performs the following actions: 
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. Creates an independent tidy data set with the average of each variable for each activity and each subject.

A description of the output of run_analysis.R script. The output is a dataframe called summary_df with 180 observations and 68 variables. The output is a tidy data set with each variable measured in a column and every observation is a row. 

Var 1: subject - A unique identifier for each subject in the study

Var 2: activity - A description of the activity the subject was doing when measurement was taken. Each person performed six activities (WALKING,WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

Var 3-68: The average value of each feature for the given activity and subject.

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation
** Note: did NOT include meanFreq(): Weighted average of the frequency components to obtain a mean frequency


These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

3 "tBodyAcc.mean...X"
4 "tBodyAcc.mean...Y"
5 "tBodyAcc.mean...Z"
6 "tBodyAcc.std...X"
7 "tBodyAcc.std...Y"
8 "tBodyAcc.std...Z"
9 "tGravityAcc.mean...X"
10 "tGravityAcc.mean...Y"
11 "tGravityAcc.mean...Z"
12 "tGravityAcc.std...X"
13 "tGravityAcc.std...Y"
14 "tGravityAcc.std...Z"
15 "tBodyAccJerk.mean...X"
16 "tBodyAccJerk.mean...Y"
17 "tBodyAccJerk.mean...Z"
18 "tBodyAccJerk.std...X"
19 "tBodyAccJerk.std...Y"
20 "tBodyAccJerk.std...Z"
21 "tBodyGyro.mean...X"
22 "tBodyGyro.mean...Y"
23 "tBodyGyro.mean...Z"
24 "tBodyGyro.std...X"
25 "tBodyGyro.std...Y"
26 "tBodyGyro.std...Z"
27 "tBodyGyroJerk.mean...X"
28 "tBodyGyroJerk.mean...Y"
29 "tBodyGyroJerk.mean...Z"
30 "tBodyGyroJerk.std...X"
31 "tBodyGyroJerk.std...Y"
32 "tBodyGyroJerk.std...Z"
33 "tBodyAccMag.mean.."
34 "tBodyAccMag.std.."
35 "tGravityAccMag.mean.."
36 "tGravityAccMag.std.."
37 "tBodyAccJerkMag.mean.."
38 "tBodyAccJerkMag.std.."
39 "tBodyGyroMag.mean.."
40 "tBodyGyroMag.std.."
41 "tBodyGyroJerkMag.mean.."
42 "tBodyGyroJerkMag.std.."
43 "fBodyAcc.mean...X"
44 "fBodyAcc.mean...Y"
45 "fBodyAcc.mean...Z"
46 "fBodyAcc.std...X"
47 "fBodyAcc.std...Y"
48 "fBodyAcc.std...Z"
49 "fBodyAccJerk.mean...X"
50 "fBodyAccJerk.mean...Y"
51 "fBodyAccJerk.mean...Z"
52 "fBodyAccJerk.std...X"
53 "fBodyAccJerk.std...Y"
54 "fBodyAccJerk.std...Z"
55 "fBodyGyro.mean...X"
56 "fBodyGyro.mean...Y"
57 "fBodyGyro.mean...Z"
58 "fBodyGyro.std...X"
59 "fBodyGyro.std...Y"
60 "fBodyGyro.std...Z"
61 "fBodyAccMag.mean.."
62 "fBodyAccMag.std.."
63 "fBodyBodyAccJerkMag.mean.."
64 "fBodyBodyAccJerkMag.std.."
65 "fBodyBodyGyroMag.mean.."
66 "fBodyBodyGyroMag.std.."
67 "fBodyBodyGyroJerkMag.mean.."
68 "fBodyBodyGyroJerkMag.std.."


For a full summary of features and experiment, refer to documenation included in Samsung Files. 
