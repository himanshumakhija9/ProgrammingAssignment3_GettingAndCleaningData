Source data

Source data was retrieved from UCI Machine Learning Repository, the data set used was the Human Activity Recognition Using Smartphones Data Set from this location.
Contents

    'README.txt'

    'features_info.txt': Shows information about the variables used on the feature vector.

    'features.txt': List of all features.

    'activity_labels.txt': Links the class labels with their activity name.

    'train/X_train.txt': Training set.

    'train/y_train.txt': Training labels.

    'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

    'test/X_test.txt': Test set.

    'test/y_test.txt': Test labels.

    'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

Project Process
Data Tidying

    For each data directory (test, train)
        load x and y data sets from file
        add y data set as activity_ids variable to x data set
        load subject data set from file
        add subject data set as subject_id variable to x data set
        add a data set variable to data set x as either ("test" or "train") to indicate where the rows came from
    Merge the test and training data sets rows
    load the activity names data set from file
        match the activity_id in the merged data set to the activity_names data set id variable and replace with the activity_name variable value
        rename the merged data set activity_id variable to activity_name
    Select only the measurements pertaining to the mean and standard deviation for each measurement
    Tidy the merged data set variable names
        convert all to lowercase
        expand all acronyms:
            t (prefix) -> _in_time_domain
            f (prefix) -> _in_frequency_domain
            acc -> accelerometer
            mag -> magnitude
            gyro -> gyroscope
            std -> std_dev
        split words with underscores
        rephrase:
            name ending in mean becomes "mean of..."
            name ending in std_dev becomes "std_dev of..."
            for measures of combined axes data add of_combined_axes to make it explicit and to match of_x_axis and of_y_axis
        remove trailing characters
    Group the merged data set by activity and subject_id and calculating averages of measures in the groups
        add avg_by_activity_and_subject_for_the_ to the start of each variable name to describe the grouped variable better

Data set variables

The variables are named in the following fashion:

{statistic} of {axis} in {domain} from {sensor-subtype} {sensor-type} {additional}

    {statistic} [required] can be one of [mean, std_dev] - the type of statistic
    {axis} [required] can be one of [x_axis, y_axis, combined_axes] - the axis measured
    {domain} [required] can be one of [time_domain, frequency_domain] - the measurement domain
    {sensor-subtype} [required] can be one of [body, gravity] - the measurement component
    {sensor-type} [required] can be one of [accelerometer, gyroscope] - the sensor measurement source
    {additional} [optional] can be one of [jerk, magnitude] - derived measurements

Variables for final data grouped by activity and subject
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
