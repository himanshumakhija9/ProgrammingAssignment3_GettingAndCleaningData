Purpose
This describes (1) the data sets produced, including (2) their variables and (3) the work performed to clean up the data.
Data Sets Produced
There are two data sets produced:

    "work_data.txt": A data set that combines the test and training data for all subjects and all activities for variables that repreent measurements on the mean and standard deviation on each measurement.
    "final_tidy.txt": A data set with the average of each variable for each activity and each subject.

Variables
The two datasets mentioned above share the identical 81 variables as below: For further explanations on the variables, "features_info.txt" should be referred.


Colname	Length	Class
activity_id	180	numeric
activity_name	180	character
subject_id	180	numeric
timeBodyAccelerometer-mean()-X	180	numeric
timeBodyAccelerometer-mean()-Y	180	numeric
timeBodyAccelerometer-mean()-Z	180	numeric
timeGravityAccelerometer-mean()-X	180	numeric
timeGravityAccelerometer-mean()-Y	180	numeric
timeGravityAccelerometer-mean()-Z	180	numeric
timeBodyAccelerometerJerk-mean()-X	180	numeric
timeBodyAccelerometerJerk-mean()-Y	180	numeric
timeBodyAccelerometerJerk-mean()-Z	180	numeric
timeBodyGyroscope-mean()-X	180	numeric
timeBodyGyroscope-mean()-Y	180	numeric
timeBodyGyroscope-mean()-Z	180	numeric
timeBodyGyroscopeJerk-mean()-X	180	numeric
timeBodyGyroscopeJerk-mean()-Y	180	numeric
timeBodyGyroscopeJerk-mean()-Z	180	numeric
timeBodyAccelerometerMagnitude-mean()	180	numeric
timeGravityAccelerometerMagnitude-mean()	180	numeric
timeBodyAccelerometerJerkMagnitude-mean()	180	numeric
timeBodyGyroscopeMagnitude-mean()	180	numeric
timeBodyGyroscopeJerkMagnitude-mean()	180	numeric
frequencyBodyAccelerometer-mean()-X	180	numeric
frequencyBodyAccelerometer-mean()-Y	180	numeric
frequencyBodyAccelerometer-mean()-Z	180	numeric
frequencyBodyAccelerometer-meanFreq()-X	180	numeric
frequencyBodyAccelerometer-meanFreq()-Y	180	numeric
frequencyBodyAccelerometer-meanFreq()-Z	180	numeric
frequencyBodyAccelerometerJerk-mean()-X	180	numeric
frequencyBodyAccelerometerJerk-mean()-Y	180	numeric
frequencyBodyAccelerometerJerk-mean()-Z	180	numeric
frequencyBodyAccelerometerJerk-meanFreq()-X	180	numeric
frequencyBodyAccelerometerJerk-meanFreq()-Y	180	numeric
frequencyBodyAccelerometerJerk-meanFreq()-Z	180	numeric
frequencyBodyGyroscope-mean()-X	180	numeric
frequencyBodyGyroscope-mean()-Y	180	numeric
frequencyBodyGyroscope-mean()-Z	180	numeric
frequencyBodyGyroscope-meanFreq()-X	180	numeric
frequencyBodyGyroscope-meanFreq()-Y	180	numeric
frequencyBodyGyroscope-meanFreq()-Z	180	numeric
frequencyBodyAccelerometerMagnitude-mean()	180	numeric
frequencyBodyAccelerometerMagnitude-meanFreq()	180	numeric
frequencyBodyAccelerometerJerkMagnitude-mean()	180	numeric
frequencyBodyAccelerometerJerkMagnitude-meanFreq()	180	numeric
frequencyBodyGyroscopeMagnitude-mean()	180	numeric
frequencyBodyGyroscopeMagnitude-meanFreq()	180	numeric
frequencyBodyGyroscopeJerkMagnitude-mean()	180	numeric
frequencyBodyGyroscopeJerkMagnitude-meanFreq()	180	numeric
timeBodyAccelerometer-std()-X	180	numeric
timeBodyAccelerometer-std()-Y	180	numeric
timeBodyAccelerometer-std()-Z	180	numeric
timeGravityAccelerometer-std()-X	180	numeric
timeGravityAccelerometer-std()-Y	180	numeric
timeGravityAccelerometer-std()-Z	180	numeric
timeBodyAccelerometerJerk-std()-X	180	numeric
timeBodyAccelerometerJerk-std()-Y	180	numeric
timeBodyAccelerometerJerk-std()-Z	180	numeric
timeBodyGyroscope-std()-X	180	numeric
timeBodyGyroscope-std()-Y	180	numeric
timeBodyGyroscope-std()-Z	180	numeric
timeBodyGyroscopeJerk-std()-X	180	numeric
timeBodyGyroscopeJerk-std()-Y	180	numeric
timeBodyGyroscopeJerk-std()-Z	180	numeric
timeBodyAccelerometerMagnitude-std()	180	numeric
timeGravityAccelerometerMagnitude-std()	180	numeric
timeBodyAccelerometerJerkMagnitude-std()	180	numeric
timeBodyGyroscopeMagnitude-std()	180	numeric
timeBodyGyroscopeJerkMagnitude-std()	180	numeric
frequencyBodyAccelerometer-std()-X	180	numeric
frequencyBodyAccelerometer-std()-Y	180	numeric
frequencyBodyAccelerometer-std()-Z	180	numeric
frequencyBodyAccelerometerJerk-std()-X	180	numeric
frequencyBodyAccelerometerJerk-std()-Y	180	numeric
frequencyBodyAccelerometerJerk-std()-Z	180	numeric
frequencyBodyGyroscope-std()-X	180	numeric
frequencyBodyGyroscope-std()-Y	180	numeric
frequencyBodyGyroscope-std()-Z	180	numeric
frequencyBodyAccelerometerMagnitude-std()	180	numeric
frequencyBodyAccelerometerJerkMagnitude-std()	180	numeric
frequencyBodyGyroscopeMagnitude-std()	180	numeric
frequencyBodyGyroscopeJerkMagnitude-std()	180	numeric

    

The test data (i.e. 'X_test.txt', 'y_test.txt', 'subject_test.txt') are combined by using 'cbind'. Similary, the training data is processed accordingly. The combined test data and train data are merged by using 'rbind'.

Secondly, 'features.txt' is examined to identify variables that represent mean and standard deviation of the measurements. Where names of features include 'mean()' and 'std()' are assumed to represent the mean and standard deviation of the measurements.

From the merged test and train data obtained above, the only features, of which names include 'mean()' and 'std()' are extracted. Subsequently, column names of the merged data are replaced by the names of features in 'features.txt' for them to be more descriptive.
