This document provides details about the variables stored in the final tidy 
data set and workings of the script.

## Description of Variables in the Final Tidy dataset

Following are the variables in the final tidy dataset stored in UCI-HAR-Dataset-Tidy.txt, which is the final output of the script

* __subjectid__  - integer 

  subjectid is the id of the volunteers for this experiment.

* __activity__   - character

  Is one of the following activities that was monitored for recording accelerometer parameters
  
  + LAYING
  + SITTING
  + STANDING
  + WALKING
  + WALKING_DOWNSTAIRS
  + WALKING_UPSTAIRS

* __Mean value of observed measurements of mean and standard deviations__ ( Column 3 thorugh 81 ) - numeric
 
 Are the average values of selected measurements of mean and standard deviation of the features  recorded from accelerometers of samsung phones of the volunteers. Following is the _list of the variables from column 3 through 81_, in that order.
```
AvgOf_tBodyAcc_Mean_X        	-  Mean value of tBodyAcc_Mean_X
AvgOf_tBodyAcc_Mean_Y		-  Mean value of tBodyAcc_Mean_Y
AvgOf_tBodyAcc_Mean_Z		-  Mean value of tBodyAcc_Mean_Z
AvgOf_tBodyAcc_Std_X		-  Mean value of tBodyAcc_Std_X
AvgOf_tBodyAcc_Std_Y		-  Mean value of tBodyAcc_Std_Y
AvgOf_tBodyAcc_Std_Z		-  Mean value of tBodyAcc_Std_Z
AvgOf_tGravityAcc_Mean_X		-  Mean value of tGravityAcc_Mean_X
AvgOf_tGravityAcc_Mean_Y		-  Mean value of tGravityAcc_Mean_Y
AvgOf_tGravityAcc_Mean_Z		-  Mean value of tGravityAcc_Mean_Z
AvgOf_tGravityAcc_Std_X		-  Mean value of tGravityAcc_Std_X
AvgOf_tGravityAcc_Std_Y		-  Mean value of tGravityAcc_Std_Y
AvgOf_tGravityAcc_Std_Z		-  Mean value of tGravityAcc_Std_Z
AvgOf_tBodyAccJerk_Mean_X		-  Mean value of tBodyAccJerk_Mean_X
AvgOf_tBodyAccJerk_Mean_Y		-  Mean value of tBodyAccJerk_Mean_Y
AvgOf_tBodyAccJerk_Mean_Z		-  Mean value of tBodyAccJerk_Mean_Z
AvgOf_tBodyAccJerk_Std_X		-  Mean value of tBodyAccJerk_Std_X
AvgOf_tBodyAccJerk_Std_Y		-  Mean value of tBodyAccJerk_Std_Y
AvgOf_tBodyAccJerk_Std_Z		-  Mean value of tBodyAccJerk_Std_Z
AvgOf_tBodyGyro_Mean_X		-  Mean value of tBodyGyro_Mean_X
AvgOf_tBodyGyro_Mean_Y		-  Mean value of tBodyGyro_Mean_Y
AvgOf_tBodyGyro_Mean_Z		-  Mean value of tBodyGyro_Mean_Z
AvgOf_tBodyGyro_Std_X		-  Mean value of tBodyGyro_Std_X
AvgOf_tBodyGyro_Std_Y		-  Mean value of tBodyGyro_Std_Y
AvgOf_tBodyGyro_Std_Z		-  Mean value of tBodyGyro_Std_Z
AvgOf_tBodyGyroJerk_Mean_X		-  Mean value of tBodyGyroJerk_Mean_X
AvgOf_tBodyGyroJerk_Mean_Y		-  Mean value of tBodyGyroJerk_Mean_Y
AvgOf_tBodyGyroJerk_Mean_Z		-  Mean value of tBodyGyroJerk_Mean_Z
AvgOf_tBodyGyroJerk_Std_X		-  Mean value of tBodyGyroJerk_Std_X
AvgOf_tBodyGyroJerk_Std_Y		-  Mean value of tBodyGyroJerk_Std_Y
AvgOf_tBodyGyroJerk_Std_Z		-  Mean value of tBodyGyroJerk_Std_Z
AvgOf_tBodyAccMag_Mean		-  Mean value of tBodyAccMag_Mean
AvgOf_tBodyAccMag_Std		-  Mean value of tBodyAccMag_Std
AvgOf_tGravityAccMag_Mean		-  Mean value of tGravityAccMag_Mean
AvgOf_tGravityAccMag_Std		-  Mean value of tGravityAccMag_Std
AvgOf_tBodyAccJerkMag_Mean		-  Mean value of tBodyAccJerkMag_Mean
AvgOf_tBodyAccJerkMag_Std		-  Mean value of tBodyAccJerkMag_Std
AvgOf_tBodyGyroMag_Mean		-  Mean value of tBodyGyroMag_Mean
AvgOf_tBodyGyroMag_Std		-  Mean value of tBodyGyroMag_Std
AvgOf_tBodyGyroJerkMag_Mean		-  Mean value of tBodyGyroJerkMag_Mean
AvgOf_tBodyGyroJerkMag_Std		-  Mean value of tBodyGyroJerkMag_Std
AvgOf_fBodyAcc_Mean_X		-  Mean value of fBodyAcc_Mean_X
AvgOf_fBodyAcc_Mean_Y		-  Mean value of fBodyAcc_Mean_Y
AvgOf_fBodyAcc_Mean_Z		-  Mean value of fBodyAcc_Mean_Z
AvgOf_fBodyAcc_Std_X		-  Mean value of fBodyAcc_Std_X
AvgOf_fBodyAcc_Std_Y		-  Mean value of fBodyAcc_Std_Y
AvgOf_fBodyAcc_Std_Z		-  Mean value of fBodyAcc_Std_Z
AvgOf_fBodyAcc_MeanFreq_X		-  Mean value of fBodyAcc_MeanFreq_X
AvgOf_fBodyAcc_MeanFreq_Y		-  Mean value of fBodyAcc_MeanFreq_Y
AvgOf_fBodyAcc_MeanFreq_Z		-  Mean value of fBodyAcc_MeanFreq_Z
AvgOf_fBodyAccJerk_Mean_X		-  Mean value of fBodyAccJerk_Mean_X
AvgOf_fBodyAccJerk_Mean_Y		-  Mean value of fBodyAccJerk_Mean_Y
AvgOf_fBodyAccJerk_Mean_Z		-  Mean value of fBodyAccJerk_Mean_Z
AvgOf_fBodyAccJerk_Std_X		-  Mean value of fBodyAccJerk_Std_X
AvgOf_fBodyAccJerk_Std_Y		-  Mean value of fBodyAccJerk_Std_Y
AvgOf_fBodyAccJerk_Std_Z		-  Mean value of fBodyAccJerk_Std_Z
AvgOf_fBodyAccJerk_MeanFreq_X		-  Mean value of fBodyAccJerk_MeanFreq_X
AvgOf_fBodyAccJerk_MeanFreq_Y		-  Mean value of fBodyAccJerk_MeanFreq_Y
AvgOf_fBodyAccJerk_MeanFreq_Z		-  Mean value of fBodyAccJerk_MeanFreq_Z
AvgOf_fBodyGyro_Mean_X		-  Mean value of fBodyGyro_Mean_X
AvgOf_fBodyGyro_Mean_Y		-  Mean value of fBodyGyro_Mean_Y
AvgOf_fBodyGyro_Mean_Z		-  Mean value of fBodyGyro_Mean_Z
AvgOf_fBodyGyro_Std_X		-  Mean value of fBodyGyro_Std_X
AvgOf_fBodyGyro_Std_Y		-  Mean value of fBodyGyro_Std_Y
AvgOf_fBodyGyro_Std_Z		-  Mean value of fBodyGyro_Std_Z
AvgOf_fBodyGyro_MeanFreq_X		-  Mean value of fBodyGyro_MeanFreq_X
AvgOf_fBodyGyro_MeanFreq_Y		-  Mean value of fBodyGyro_MeanFreq_Y
AvgOf_fBodyGyro_MeanFreq_Z		-  Mean value of fBodyGyro_MeanFreq_Z
AvgOf_fBodyAccMag_Mean		-  Mean value of fBodyAccMag_Mean
AvgOf_fBodyAccMag_Std		-  Mean value of fBodyAccMag_Std
AvgOf_fBodyAccMag_MeanFreq		-  Mean value of fBodyAccMag_MeanFreq
AvgOf_fBodyBodyAccJerkMag_Mean		-  Mean value of fBodyBodyAccJerkMag_Mean
AvgOf_fBodyBodyAccJerkMag_Std		-  Mean value of fBodyBodyAccJerkMag_Std
AvgOf_fBodyBodyAccJerkMag_MeanFreq		-  Mean value of fBodyBodyAccJerkMag_MeanFreq
AvgOf_fBodyBodyGyroMag_Mean		-  Mean value of fBodyBodyGyroMag_Mean
AvgOf_fBodyBodyGyroMag_Std		-  Mean value of fBodyBodyGyroMag_Std
AvgOf_fBodyBodyGyroMag_MeanFreq		-  Mean value of fBodyBodyGyroMag_MeanFreq
AvgOf_fBodyBodyGyroJerkMag_Mean		-  Mean value of fBodyBodyGyroJerkMag_Mean
AvgOf_fBodyBodyGyroJerkMag_Std		-  Mean value of fBodyBodyGyroJerkMag_Std
AvgOf_fBodyBodyGyroJerkMag_MeanFreq		-  Mean value of fBodyBodyGyroJerkMag_MeanFreq
```

## Explaining run_analysis.R Script

### prepareTidyDataSet()

This is the main function, which invokes other to accomplish clean up of existing datasets and prepare and write the the final tidy dataset to a file.

```
        totalX <- cleanAndMergeDatasets();
        tidyset <- calculateAverages( totalX )
        writeTidyDataToFile( tidyset, "UCI-HAR-Dataset-Tidy.txt" )
```

### cleanAndMergeDatasets() 

This function reads train, test datasets, activity labels and features list. Then cleans and merges the datasets to create one final dataset. Also assigns the column names in the final dataset. Following is the step by step explanation of this function.

+ Reads the following data files required for the project
```
        trainX <- readUCIFile( "train/X_train.txt")
        trainY <- readUCIFile( "train/y_train.txt")

        testX <- readUCIFile( "test/X_test.txt")
        testY <- readUCIFile( "test/y_test.txt")
        
        
        trainSubject <- readUCIFile( "train/subject_train.txt")
        testSubject <- readUCIFile( "test/subject_test.txt")
        
        colnamesX <- readUCIFile( "features.txt")
        activityLabels <- readUCIFile( "activity_labels.txt")        
```  

+ Sets the column names subjectid labels files as _subjectid_ and naming the columns in activity labels as _activityid_ and _activity_
```
        colnames( trainSubject ) <- c( "subjectid" )
        colnames( testSubject ) <- c( "subjectid" )
        colnames( activityLabels ) <- c( "activityid", "activity" )
        colnames( trainY ) <- c( "activityid" )
        colnames( testY ) <- c( "activityid" )        
```

+ Mapping activity ids in trainY and testY to the actual activity names like WALKING, SITTING etc.
```
        trainY <- join( trainY, activityLabels, by = c( "activityid" ) )
        testY <- join( testY, activityLabels, by = c( "activityid" ) )
```        

+ Cleaning up the names in features set before setting them as column names for trainX and TrainY datasets. This is to make the names more readable
```
        colnamesX <- gsub( "-", "_", colnamesX[,2]);
        colnamesX <- gsub( "\\(\\)", "", colnamesX);
        colnamesX <- gsub( "mean", "Mean", colnamesX);
        colnamesX <- gsub( "std", "Std", colnamesX);
```

+ Setting the column names for trainX and testX dataset by using feautures list available
```
        colnames(trainX) <- colnamesX
        colnames(testX) <- colnamesX
```

+ Adding the trainY activity labels and train subject ids as columns to the trainX
Adding the testY activity labels and test subject ids as columns to the testX
```
        trainX <- cbind( activity = trainY$activity, trainX )  
        trainX <- cbind( subjectid = trainSubject$subjectid, trainX )  

        testX <- cbind( activity = testY$activity, testX ) 
        testX <- cbind( subjectid = testSubject$subjectid, testX )
```

+ Finally merging train and test data set to form one complete dataset
```
        totalX <- rbind( trainX, testX ) 
```

### calculateAverages()

This function calculates the average values of all the measurements 

+ As the purpose of the project is to focus on the observations of mean and standard deviations, it creates a subset of data that represents only those features. It selects all columns that has _Mean_ and _Std_ in the column name.
```
        npattern = "_Mean|Std"
        tidyset <- totalX[ c( "subjectid", "activity"
                         , grep( npattern, names(totalX) , value = TRUE ) ) ]
```

+ Calculating average of selected features for each subject id and each activity
```
        meanOfTidyset <- ddply(tidyset
                        , .(subjectid, activity)
                        , numcolwise( mean ) )
```

+ Altering the column names to prefix them with "AvgOf" as we have calculated average of each column
```
        meanOfTidyset <- ddply(tidyset
                        , .(subjectid, activity)
                        , numcolwise( mean ) )
        colnames( meanOfTidyset )[3:81] <- paste( "AvgOf"
                                         , colnames( meanOfTidyset )[3:81]
                                         , sep = "_" )
```


### writeToFile()

This function writes the tidy dataset in csv format to the filename passed to it

```
        write.table( tidyset, file = filename, sep = ","
                   , col.names = TRUE, row.names = FALSE )
```
