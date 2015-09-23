<h1> Code Book</h1>

1 subject: Numbered 1-30 to represent each of the 30 volunteers within an age bracket of 19-48 years who participated in the study

2 activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

3 "tBodyAcc.mean...X" "the average value of tBodyAcc.mean...X"

4 "tBodyAcc.mean...Y" "the average value of tBodyAcc.mean...Y"

5 "tBodyAcc.mean...Z" "the average value of tBodyAcc.mean...Z"

6 "tBodyAcc.std...X" "the average value of tBodyAcc.std...X"

7 "tBodyAcc.std...Y" "the average value of tBodyAcc.std...Y"

8 "tBodyAcc.std...Z" "the average value of tBodyAcc.std...Z"

9 "tGravityAcc.mean...X" "the average value of tGravityAcc.mean...X"

10 "tGravityAcc.mean...Y" "the average value of tGravityAcc.mean...Y"

11 "tGravityAcc.mean...Z" "the average value of tGravityAcc.mean...Z"

12 "tGravityAcc.std...X" "the average value of tGravityAcc.std...X"

13 "tGravityAcc.std...Y" "the average value of tGravityAcc.std...Y"

14 "tGravityAcc.std...Z" "the average value of tGravityAcc.std...Z"

15 "tBodyAccJerk.mean...X" "the average value of tBodyAccJerk.mean...X"

16 "tBodyAccJerk.mean...Y" "the average value of tBodyAccJerk.mean...Y"

17 "tBodyAccJerk.mean...Z" "the average value of tBodyAccJerk.mean...Z"

18 "tBodyAccJerk.std...X" "the average value of tBodyAccJerk.std...X"

19 "tBodyAccJerk.std...Y" "the average value of tBodyAccJerk.std...Y"

20 "tBodyAccJerk.std...Z" "the average value of tBodyAccJerk.std...Z"

21 "tBodyGyro.mean...X" "the average value of tBodyGyro.mean...X"

22 "tBodyGyro.mean...Y" "the average value of tBodyGyro.mean...Y"

23 "tBodyGyro.mean...Z" "the average value of tBodyGyro.mean...Z"

24 "tBodyGyro.std...X" "the average value of tBodyGyro.std...X"

25 "tBodyGyro.std...Y" "the average value of tBodyGyro.std...Y"

26 "tBodyGyro.std...Z" "the average value of tBodyGyro.std...Z"

27 "tBodyGyroJerk.mean...X" "the average value of tBodyGyroJerk.mean...X"

28 "tBodyGyroJerk.mean...Y" "the average value of tBodyGyroJerk.mean...Y"

29 "tBodyGyroJerk.mean...Z" "the average value of tBodyGyroJerk.mean...Z"

30 "tBodyGyroJerk.std...X" "the average value of tBodyGyroJerk.std...X"

31 "tBodyGyroJerk.std...Y" "the average value of tBodyGyroJerk.std...Y"

32 "tBodyGyroJerk.std...Z" "the average value of tBodyGyroJerk.std...Z"

33 "tBodyAccMag.mean.." "the average value of tBodyAccMag.mean.."

34 "tBodyAccMag.std.." "the average value of tBodyAccMag.std.."

35 "tGravityAccMag.mean.." "the average value of tGravityAccMag.mean.."

36 "tGravityAccMag.std.." "the average value of tGravityAccMag.std.."

37 "tBodyAccJerkMag.mean.." "the average value of tBodyAccJerkMag.mean.."

38 "tBodyAccJerkMag.std.." "the average value of tBodyAccJerkMag.std.."

39 "tBodyGyroMag.mean.." "the average value of tBodyGyroMag.mean.."

40 "tBodyGyroMag.std.." "the average value of tBodyGyroMag.std.."

41 "tBodyGyroJerkMag.mean.." "the average value of tBodyGyroJerkMag.mean.."

42 "tBodyGyroJerkMag.std.." "the average value of tBodyGyroJerkMag.std.."

43 "fBodyAcc.mean...X" "the average value of fBodyAcc.mean...X"

44 "fBodyAcc.mean...Y" "the average value of fBodyAcc.mean...Y"

45 "fBodyAcc.mean...Z" "the average value of fBodyAcc.mean...Z"

46 "fBodyAcc.std...X" "the average value of fBodyAcc.std...X"

47 "fBodyAcc.std...Y" "the average value of fBodyAcc.std...Y"

48 "fBodyAcc.std...Z" "the average value of fBodyAcc.std...Z"



** More details**
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered
using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
