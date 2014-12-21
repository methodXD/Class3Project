Codebook - Class3Project
=============

## Project for Data Science Class 03 - Getting and Cleaning Data

### About:

The variables included in the raw data and resulting tidy data are based on measurements
obtained from the accelerometer and gyroscope of a Samsung phone, while 30 volunteers 
performed six activities wearing the device on their waist. The following list 
of 33 signals were recorded and a number of variables were estimated from these signals. 
Although the raw data includes 561 measurements, deriving from estimations from the 33 
signals, we are only interested in 2 variables derived from the 33 signals (mean and 
standard deviation), so our tidy data results in 66 columns of measurements. 
This is in addition to the 2 columns we group our data by (subject and activity 
description), resulting in 68 total variables with 180 observations.

The dataset was transformed from the raw files to the tidy dataset through the following. 
The subject_test.txt data was appended to the subject_train.txt data. The Y_test.txt data
was appended to the Y_train.txt data. This second combined datset containing the activity 
data was column binded to the subject data and an identifier was added to retain row order.
The activity_labels.txt data was used to provide readable descriptions of the activities
in the dataset and was done my merging datasets. After appending the measurement data from 
X_test.txt to Y_test.txt, this data was column binded to the previous data, providing a link
between subject and activity and measurements. After cleaning up the column headings, we 
have a combined dataset incorporating the data from the 8 relevant files. A search among the 
column headings for the mean and standard deviation calculations results in the 66 columns
of measurements. Aggregating the average of the measurements by subject and activity
description groups gives us the tidy data set we sought to create.

List of 33 signals included in the raw data and the tidy data set:
(Note that the variables ending in -XYZ have three corresponding variables in the data set.)
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were included in the tidy data set:
(Note that these 2 variables are calculated for each of the 33 signals above)
* mean(): Mean value
* std(): Standard deviation


### Data Dictionary

* [1] "subject"                   
		The identifier of the volunteer subject who carried out the experiment.  
			integer (1-30)
* [2] "activity_desc"             
		A description of the activity being performed during the data measurement by each subject.  
		   * WALKING  
		   * WALKING_UPSTAIRS  
		   * WALKING_DOWNSTAIRS  
		   * SITTING  
		   * STANDING  
		   * LAYING  
* [3] "tBodyAcc.mean_.X"          
		Mean of the Time Domain Signal of Body Linear Acceleration in the X-Coordinate  
			numeric (normalized and bounded within [-1,1].)
* [4] "tBodyAcc.mean_.Y"          
		Mean of the Time Domain Signal of Body Linear Acceleration in the Y-Coordinate  
			numeric (normalized and bounded within [-1,1].)
* [5] "tBodyAcc.mean_.Z"          
 		   Mean of the Time Domain Signal of Body Linear Acceleration in the Z-Coordinate  
			numeric (normalized and bounded within [-1,1].)
* [6] "tGravityAcc.mean_.X"       
 		Mean of the Time Domain Signal of Gravity Linear Acceleration in the X-Coordinate  
			numeric (normalized and bounded within [-1,1].)
* [7] "tGravityAcc.mean_.Y"       
  		Mean of the Time Domain Signal of Gravity Linear Acceleration in the Y-Coordinate  
			numeric (normalized and bounded within [-1,1].)
* [8] "tGravityAcc.mean_.Z"       
  		Mean of the Time Domain Signal of Gravity Linear Acceleration in the Z-Coordinate  
			numeric (normalized and bounded within [-1,1].)
* [9] "tBodyAccJerk.mean_.X"      
 		Mean of the Time Domain Signal of Body Linear Acceleration Jerk in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [10] "tBodyAccJerk.mean_.Y"      
		Mean of the Time Domain Signal of Body Linear Acceleration Jerk in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [11] "tBodyAccJerk.mean_.Z"      
		Mean of the Time Domain Signal of Body Linear Acceleration Jerk in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [12] "tBodyGyro.mean_.X"         
		Mean of the Time Domain Signal of Body Angular Acceleration in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [13] "tBodyGyro.mean_.Y"         
		Mean of the Time Domain Signal of Body Angular Acceleration in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [14] "tBodyGyro.mean_.Z"         
		Mean of the Time Domain Signal of Body Angular Acceleration in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [15] "tBodyGyroJerk.mean_.X"     
		Mean of the Time Domain Signal of Body Angular Acceleration Jerk in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [16] "tBodyGyroJerk.mean_.Y"     
		Mean of the Time Domain Signal of Body Angular Acceleration Jerk in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [17] "tBodyGyroJerk.mean_.Z"     
		Mean of the Time Domain Signal of Body Angular Acceleration Jerk in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [18] "tBodyAccMag.mean_"         
		Mean of the Time Domain Signal of Body Linear Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [19] "tGravityAccMag.mean_"      
		Mean of the Time Domain Signal of Gravity Linear Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [20] "tBodyAccJerkMag.mean_"     
		Mean of the Time Domain Signal of Body Linear Acceleration Jerk Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [21] "tBodyGyroMag.mean_"        
		Mean of the Time Domain Signal of Body Angular Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [22] "tBodyGyroJerkMag.mean_"    
		Mean of the Time Domain Signal of Body Angular Acceleration Jerk Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [23] "fBodyAcc.mean_.X"          
		Mean of the Frequency Domain Signal of Body Linear Acceleration in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [24] "fBodyAcc.mean_.Y"          
		Mean of the Frequency Domain Signal of Body Linear Acceleration in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [25] "fBodyAcc.mean_.Z"          
		Mean of the Frequency Domain Signal of Body Linear Acceleration in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [26] "fBodyAccJerk.mean_.X"      
		Mean of the Frequency Domain Signal of Body Linear Acceleration Jerk in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [27] "fBodyAccJerk.mean_.Y"      
		Mean of the Frequency Domain Signal of Body Linear Acceleration Jerk in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [28] "fBodyAccJerk.mean_.Z"      
		Mean of the Frequency Domain Signal of Body Linear Acceleration Jerk in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [29] "fBodyGyro.mean_.X"         
		Mean of the Frequency Domain Signal of Body Angular Acceleration in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [30] "fBodyGyro.mean_.Y"         
		Mean of the Frequency Domain Signal of Body Angular Acceleration in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [31] "fBodyGyro.mean_.Z"         
		Mean of the Frequency Domain Signal of Body Angular Acceleration in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [32] "fBodyAccMag.mean_"         
		Mean of the Frequency Domain Signal of Body Linear Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [33] "fBodyBodyAccJerkMag.mean_" 
		Mean of the Frequency Domain Signal of Body Linear Acceleration Jerk Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [34] "fBodyBodyGyroMag.mean_"    
		Mean of the Frequency Domain Signal of Body Angular Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [35] "fBodyBodyGyroJerkMag.mean_"
		Mean of the Frequency Domain Signal of Body Angular Acceleration Jerk Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [36] "tBodyAcc.std_.X"           
		Standard Deviation of the Time Domain Signal of Body Linear Acceleration in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [37] "tBodyAcc.std_.Y"           
		Standard Deviation of the Time Domain Signal of Body Linear Acceleration in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [38] "tBodyAcc.std_.Z"           
		Standard Deviation of the Time Domain Signal of Body Linear Acceleration in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [39] "tGravityAcc.std_.X"        
		Standard Deviation of the Time Domain Signal of Gravity Linear Acceleration in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [40] "tGravityAcc.std_.Y"        
		Standard Deviation of the Time Domain Signal of Gravity Linear Acceleration in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [41] "tGravityAcc.std_.Z"        
		Standard Deviation of the Time Domain Signal of Gravity Linear Acceleration in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [42] "tBodyAccJerk.std_.X"       
		Standard Deviation of the Time Domain Signal of Body Linear Acceleration Jerk in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [43] "tBodyAccJerk.std_.Y"       
		Standard Deviation of the Time Domain Signal of Body Linear Acceleration Jerk in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [44] "tBodyAccJerk.std_.Z"       
		Standard Deviation of the Time Domain Signal of Body Linear Acceleration Jerk in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [45] "tBodyGyro.std_.X"          
		Standard Deviation of the Time Domain Signal of Body Angular Acceleration in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [46] "tBodyGyro.std_.Y"          
		Standard Deviation of the Time Domain Signal of Body Angular Acceleration in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [47] "tBodyGyro.std_.Z"          
		Standard Deviation of the Time Domain Signal of Body Angular Acceleration in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [48] "tBodyGyroJerk.std_.X"      
		Standard Deviation of the Time Domain Signal of Body Angular Acceleration Jerk in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [49] "tBodyGyroJerk.std_.Y"      
		Standard Deviation of the Time Domain Signal of Body Angular Acceleration Jerk in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [50] "tBodyGyroJerk.std_.Z"      
		Standard Deviation of the Time Domain Signal of Body Angular Acceleration Jerk in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [51] "tBodyAccMag.std_"          
		Standard Deviation of the Time Domain Signal of Body Linear Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [52] "tGravityAccMag.std_"       
		Standard Deviation of the Time Domain Signal of Gravity Linear Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [53] "tBodyAccJerkMag.std_"      
		Standard Deviation of the Time Domain Signal of Body Linear Acceleration Jerk Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [54] "tBodyGyroMag.std_"         
		Standard Deviation of the Time Domain Signal of Body Angular Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [55] "tBodyGyroJerkMag.std_"     
		Standard Deviation of the Time Domain Signal of Body Angular Acceleration Jerk Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [56] "fBodyAcc.std_.X"           
		Standard Deviation of the Frequency Domain Signal of Body Linear Acceleration in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [57] "fBodyAcc.std_.Y"           
		Standard Deviation of the Frequency Domain Signal of Body Linear Acceleration in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [58] "fBodyAcc.std_.Z"           
		Standard Deviation of the Frequency Domain Signal of Body Linear Acceleration in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [59] "fBodyAccJerk.std_.X"       
		Standard Deviation of the Frequency Domain Signal of Body Linear Acceleration Jerk in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [60] "fBodyAccJerk.std_.Y"       
		Standard Deviation of the Frequency Domain Signal of Body Linear Acceleration Jerk in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [61] "fBodyAccJerk.std_.Z"       
		Standard Deviation of the Frequency Domain Signal of Body Linear Acceleration Jerk in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [62] "fBodyGyro.std_.X"          
		Standard Deviation of the Frequency Domain Signal of Body Angular Acceleration in the X-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [63] "fBodyGyro.std_.Y"          
		Standard Deviation of the Frequency Domain Signal of Body Angular Acceleration in the Y-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [64] "fBodyGyro.std_.Z"          
		Standard Deviation of the Frequency Domain Signal of Body Angular Acceleration in the Z-Coordinate
			numeric (normalized and bounded within [-1,1].)
* [65] "fBodyAccMag.std_"          
		Standard Deviation of the Frequency Domain Signal of Body Linear Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [66] "fBodyBodyAccJerkMag.std_"  
		Standard Deviation of the Frequency Domain Signal of Body Linear Acceleration Jerk Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [67] "fBodyBodyGyroMag.std_"     
		Standard Deviation of the Frequency Domain Signal of Body Angular Acceleration Euclidean Norm
			numeric (normalized and bounded within [-1,1].)
* [68] "fBodyBodyGyroJerkMag.std_"
		Standard Deviation of the Frequency Domain Signal of Body Angular Acceleration Jerk Euclidean Norm
			numeric (normalized and bounded within [-1,1].)


			
			
			
			
			
			
			
			
## Further Information from original README



Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


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
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

