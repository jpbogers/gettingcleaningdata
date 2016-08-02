# Description of data


The data in this project are derived from the:

Human Activity Recognition Using Smartphones Dataset Version 1.0  

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory  	
DITEN - Universit degli Studi di Genova.    	
Via Opera Pia 11A, I-16145, Genoa, Italy.   	
activityrecognition@smartlab.ws   
www.smartlab.ws

as described in: 

*http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones*

###Experiment 

One of the most exciting areas in all of data science right now is wearable
computing - see for example this article . Companies like Fitbit, Nike, and
Jawbone Up are racing to develop the most advanced algorithms to attract new
users. The data linked to from the course website represent data collected from
the accelerometers from the Samsung Galaxy S smartphone. A full description is
available at the site where the data was obtained: The experiments have been
carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung
Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we
captured 3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window). The sensor acceleration signal, which has
gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is
assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain. 

The raw data of all the experiments on 30 subjects, performing 6 different activities is provided. The experimental data is arbitrarily separated into two files (train and test). After the current program is run, the following average data of the mean and the standard deviation of all the data, grouped by subject and activity, is calculated.

###For each subject and each activity the following average data of the mean and the standard deviation is calculated:


- Triaxial acceleration from the accelerometer (total acceleration) and the
estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables.

As well as:

- An identifier of the subject who carried out the experiment.
- Its activity label. 

**The activity labels are coded:**

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

###Therefore the following variables are provided in the final output:

* Subject 
* Activity 
* Average_tBodyAcc-mean()-X 
* Average_tBodyAcc-mean()-Y 
* Average_tBodyAcc-mean()-Z 
* Average_tBodyAcc-std()-X 
* Average_tBodyAcc-std()-Y 
* Average_tBodyAcc-std()-Z 
* Average_tGravityAcc-mean()-X 
* Average_tGravityAcc-mean()-Y 
* Average_tGravityAcc-mean()-Z 
* Average_tGravityAcc-std()-X 
* Average_tGravityAcc-std()-Y 
* Average_tGravityAcc-std()-Z 
* Average_tBodyAccJerk-mean()-X 
* Average_tBodyAccJerk-mean()-Y 
* Average_tBodyAccJerk-mean()-Z 
* Average_tBodyAccJerk-std()-X 
* Average_tBodyAccJerk-std()-Y 
* Average_tBodyAccJerk-std()-Z 
* Average_tBodyGyro-mean()-X 
* Average_tBodyGyro-mean()-Y 
* Average_tBodyGyro-mean()-Z 
* Average_tBodyGyro-std()-X 
* Average_tBodyGyro-std()-Y 
* Average_tBodyGyro-std()-Z 
* Average_tBodyGyroJerk-mean()-X 
* Average_tBodyGyroJerk-mean()-Y 
* Average_tBodyGyroJerk-mean()-Z 
* Average_tBodyGyroJerk-std()-X 
* Average_tBodyGyroJerk-std()-Y 
* Average_tBodyGyroJerk-std()-Z 
* Average_tBodyAccMag-mean() 
* Average_tBodyAccMag-std() 
* Average_tGravityAccMag-mean() 
* Average_tGravityAccMag-std() 
* Average_tBodyAccJerkMag-mean() 
* Average_tBodyAccJerkMag-std() 
* Average_tBodyGyroMag-mean() 
* Average_tBodyGyroMag-std() 
* Average_tBodyGyroJerkMag-mean() 
* Average_tBodyGyroJerkMag-std() 
* Average_fBodyAcc-mean()-X 
* Average_fBodyAcc-mean()-Y 
* Average_fBodyAcc-mean()-Z 
* Average_fBodyAcc-std()-X 
* Average_fBodyAcc-std()-Y 
* Average_fBodyAcc-std()-Z 
* Average_fBodyAcc-meanFreq()-X 
* Average_fBodyAcc-meanFreq()-Y 
* Average_fBodyAcc-meanFreq()-Z 
* Average_fBodyAccJerk-mean()-X 
* Average_fBodyAccJerk-mean()-Y 
* Average_fBodyAccJerk-mean()-Z 
* Average_fBodyAccJerk-std()-X 
* Average_fBodyAccJerk-std()-Y 
* Average_fBodyAccJerk-std()-Z 
* Average_fBodyAccJerk-meanFreq()-X 
* Average_fBodyAccJerk-meanFreq()-Y 
* Average_fBodyAccJerk-meanFreq()-Z 
* Average_fBodyGyro-mean()-X 
* Average_fBodyGyro-mean()-Y 
* Average_fBodyGyro-mean()-Z 
* Average_fBodyGyro-std()-X 
* Average_fBodyGyro-std()-Y 
* Average_fBodyGyro-std()-Z 
* Average_fBodyGyro-meanFreq()-X 
* Average_fBodyGyro-meanFreq()-Y 
* Average_fBodyGyro-meanFreq()-Z 
* Average_fBodyAccMag-mean() 
* Average_fBodyAccMag-std() 
* Average_fBodyAccMag-meanFreq() 
* Average_fBodyBodyAccJerkMag-mean() 
* Average_fBodyBodyAccJerkMag-std() 
* Average_fBodyBodyAccJerkMag-meanFreq() 
* Average_fBodyBodyGyroMag-mean() 
* Average_fBodyBodyGyroMag-std() 
* Average_fBodyBodyGyroMag-meanFreq() 
* Average_fBodyBodyGyroJerkMag-mean() 
* Average_fBodyBodyGyroJerkMag-std() 
* Average_fBodyBodyGyroJerkMag-meanFreq()
