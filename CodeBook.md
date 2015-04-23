## Guide to variables in output of run_analysis.R

The run_analysis.R script produces data.frames data and avgs, which are saved 
as data.txt and averages.txt. Both have the same 81 variables, derived from the 
UCI HAR Dataset, though the data in avgs and averages.txt are means of the HAR 
data, whereas those in data and data.txt are the exact HAR data.

The first variable, Subject, is the subject ID identifier number. It is an 
integer factor that ranges from 1 to 30.

The second variable, Activity, is the activity the subject was performing. It 
is a string factor with 6 levels:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

The remaining 79 variables are described fully in features_info.txt, and retain 
the same naming conventions. Variables 3-81 are all floating precision numbers. 
They are means and standard deviations (abbreviated as "std" in variable 
names). A prefix "t" indicates a time series, and "f" a Fast Fourier Transform 
(FFT). A suffix of "X", "Y", or "Z" indicates a value in the respective 
coordinate direction. 

The complete list of variable names for data, data.txt, avgs, and averages.txt, 
also saved in output_variables.txt, is as follows:

- Subject
- Activity
- tBodyAcc.mean...X
- tBodyAcc.mean...Y
- tBodyAcc.mean...Z
- tBodyAcc.std...X
- tBodyAcc.std...Y
- tBodyAcc.std...Z
- tGravityAcc.mean...X
- tGravityAcc.mean...Y
- tGravityAcc.mean...Z
- tGravityAcc.std...X
- tGravityAcc.std...Y
- tGravityAcc.std...Z
- tBodyAccJerk.mean...X
- tBodyAccJerk.mean...Y
- tBodyAccJerk.mean...Z
- tBodyAccJerk.std...X
- tBodyAccJerk.std...Y
- tBodyAccJerk.std...Z
- tBodyGyro.mean...X
- tBodyGyro.mean...Y
- tBodyGyro.mean...Z
- tBodyGyro.std...X
- tBodyGyro.std...Y
- tBodyGyro.std...Z
- tBodyGyroJerk.mean...X
- tBodyGyroJerk.mean...Y
- tBodyGyroJerk.mean...Z
- tBodyGyroJerk.std...X
- tBodyGyroJerk.std...Y
- tBodyGyroJerk.std...Z
- tBodyAccMag.mean..
- tBodyAccMag.std..
- tGravityAccMag.mean..
- tGravityAccMag.std..
- tBodyAccJerkMag.mean..
- tBodyAccJerkMag.std..
- tBodyGyroMag.mean..
- tBodyGyroMag.std..
- tBodyGyroJerkMag.mean..
- tBodyGyroJerkMag.std..
- fBodyAcc.mean...X
- fBodyAcc.mean...Y
- fBodyAcc.mean...Z
- fBodyAcc.std...X
- fBodyAcc.std...Y
- fBodyAcc.std...Z
- fBodyAcc.meanFreq...X
- fBodyAcc.meanFreq...Y
- fBodyAcc.meanFreq...Z
- fBodyAccJerk.mean...X
- fBodyAccJerk.mean...Y
- fBodyAccJerk.mean...Z
- fBodyAccJerk.std...X
- fBodyAccJerk.std...Y
- fBodyAccJerk.std...Z
- fBodyAccJerk.meanFreq...X
- fBodyAccJerk.meanFreq...Y
- fBodyAccJerk.meanFreq...Z
- fBodyGyro.mean...X
- fBodyGyro.mean...Y
- fBodyGyro.mean...Z
- fBodyGyro.std...X
- fBodyGyro.std...Y
- fBodyGyro.std...Z
- fBodyGyro.meanFreq...X
- fBodyGyro.meanFreq...Y
- fBodyGyro.meanFreq...Z
- fBodyAccMag.mean..
- fBodyAccMag.std..
- fBodyAccMag.meanFreq..
- fBodyBodyAccJerkMag.mean..
- fBodyBodyAccJerkMag.std..
- fBodyBodyAccJerkMag.meanFreq..
- fBodyBodyGyroMag.mean..
- fBodyBodyGyroMag.std..
- fBodyBodyGyroMag.meanFreq..
- fBodyBodyGyroJerkMag.mean..
- fBodyBodyGyroJerkMag.std..
- fBodyBodyGyroJerkMag.meanFreq..
