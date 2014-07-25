library( plyr )

# pointing to the zipped Dataset 
## It assumes the zip dataset in the current working directory
UCIDataFile <- "getdata-projectfiles-UCI HAR Dataset.zip";

# The function reads a file from a zip file
# Expects the filename with the path inside the zip file
# reads the data files and returns the data.frame
readUCIFile <- function( file )
{
        ucifile <- read.table(unz( UCIDataFile, file ),  sep = "" )
        ucifile
}

# Reads train and test datasets and also read the activity labels and
# featurs list.
# Cleans the datasets and merges the datasets to create one dataset
# Assigns the column names to the final dataset
#
# Returns the merged dataset of train and test dataset
#
cleanAndMergeDatasets <- function()        
{

        message( "Loading the train dataset...")
        
        # Read train data set - activity observations and activity labels
        trainX <- readUCIFile( "UCI HAR Dataset/train/X_train.txt")
        trainY <- readUCIFile( "UCI HAR Dataset/train/y_train.txt")
        
        message( "Loading the test dataset...")
        
        # Read test data set - activity observations and activity labels
        testX <- readUCIFile( "UCI HAR Dataset/test/X_test.txt")
        testY <- readUCIFile( "UCI HAR Dataset/test/y_test.txt")
        
        message( "Loading other data files...")
        
        # Read the subject ids for both train and test data set
        trainSubject <- readUCIFile( "UCI HAR Dataset/train/subject_train.txt")
        testSubject <- readUCIFile( "UCI HAR Dataset/test/subject_test.txt")
        
        # Read the features list and activity lables 
        colnamesX <- readUCIFile( "UCI HAR Dataset/features.txt")
        activityLabels <- readUCIFile( "UCI HAR Dataset/activity_labels.txt")        
        
        # naming the columns in train and test subjects file as "subjectid"
        colnames( trainSubject ) <- c( "subjectid" )
        colnames( testSubject ) <- c( "subjectid" )
        
        # naming the columns in activity labels as activityid and activity
        colnames( activityLabels ) <- c( "activityid", "activity" )
        
        # naming the columns in trainY and testY as activityid
        colnames( trainY ) <- c( "activityid" )
        colnames( testY ) <- c( "activityid" )
        
        message( "Joining all datasets by subjectids and activity ids...")
        
        # Mapping the activity ids in file trainY and testY
        # to the actual activity names or labels
        trainY <- join( trainY, activityLabels, by = c( "activityid" ) )
        testY <- join( testY, activityLabels, by = c( "activityid" ) )
        
        message( "Preparing the column names..." )
        
        # Cleaning up the names in features set before setting them as 
        # column names for trainX and TrainY datasets. This is to make 
        # the names more readable
        colnamesX <- gsub( "-", "_", colnamesX[,2]);
        colnamesX <- gsub( "\\(\\)", "", colnamesX);
        colnamesX <- gsub( "mean", "Mean", colnamesX);
        colnamesX <- gsub( "std", "Std", colnamesX);
        
        # Setting the column names for trainX and testX dataset now
        colnames(trainX) <- colnamesX
        colnames(testX) <- colnamesX
        
        message( "Merging the train and test datasets...")
        
        # Adding the trainY activity labels and train subject ids 
        # as columns to the trainX
        trainX <- cbind( activity = trainY$activity, trainX )  
        trainX <- cbind( subjectid = trainSubject$subjectid, trainX )  
        
        # Adding the testY activity labels and test subject ids 
        # as columns to the testX
        testX <- cbind( activity = testY$activity, testX ) 
        testX <- cbind( subjectid = testSubject$subjectid, testX )
        
        # Finally merging train and test data set to form one complete dataset
        totalX <- rbind( trainX, testX ) 
        
        totalX
}

# Calculates the average values of all the measurements (columns) in the 
# dataset passed
# Expects a data.frame containing the complete dataset
# Returns another data.frame which contains averages values
#
calculateAverages <- function( mergedX )
{
        
        # selecting measurements on the mean and standard deviation 
        npattern = "_Mean|Std"
        tidyset <- mergedX[ c( "subjectid", "activity"
                         , grep( npattern, names(mergedX) , value = TRUE ) ) ]
                
        message( "Calculating mean values of selected measurements...")
        
        # Calculating average of each measurement per subjectid per activity
        meanOfTidyset <- ddply(tidyset
                        , .(subjectid, activity)
                        , numcolwise( mean ) )
        
        # Prefix each column name with "AvgOf" as we have calculated
        # average of each column        
        colnames( meanOfTidyset )[3:81] <- paste( "AvgOf"
                                         , colnames( meanOfTidyset )[3:81]
                                         , sep = "_" )
        
        meanOfTidyset
}

#
#Writes the data.frame to a file in the current working directory.
#
writeToFile <- function( tidyset, filename )
{
        
        # Writing the mean values of final tidy dataset to the file
        write.table( tidyset
                   , file = filename
                   , sep = ","
                   , col.names = TRUE
                   , row.names = FALSE )
        
        message("Processing complete and following file is created")
        message(" - UCI-HAR-Dataset-Tidy.txt - Final tidy data set")                
}

# 
# The main method which invokes other methods to complete processing of 
# datasets, prepares the final tidy dataset and finally writes to a file.
#
prepareTidyDataSet <- function()
{
        totalX <- cleanAndMergeDatasets();
        tidyset <- calculateAverages( totalX )
        writeToFile( tidyset, "UCI-HAR-Dataset-Tidy.txt" )
}