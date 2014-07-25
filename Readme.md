## Project Details

This project is about creating a tidy dataset from the original raw dataset available at 

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The dataset contains data collected from the *accelerometers* from the *Samsung Galaxy S smartphone*. 
* Following datasets in the zip file is used to create the final tidy dataset.

        + UCI HAR Dataset/train/X_train.txt - Train datasets with features observations 
        + UCI HAR Dataset/train/y_train.txt - Activity labels for train datasets
        + UCI HAR Dataset/test/X_test.txt - Train datasets with features observations
        + UCI HAR Dataset/test/y_test.txt - Activity lables for test datasets
        + UCI HAR Dataset/train/subject_train.txt - subject id for the train data set
        + UCI HAR Dataset/test/subject_test.txt - subject id for the test data set
        + UCI HAR Dataset/features.txt - features for which observations were noted
        + UCI HAR Dataset/activity_labels.txt - activity labels

The project contains the following files

1. The script **run_analysis.R**, which analyzes the above data files and creates a tidy dataset which is appropriate for further analysis. 

2. The file **Codebook.md**, which describes the variables in the final tiday datasets created. 

## To run the script
1. Download and store the [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into to a directory.

2. Set the above directory as the current working directory of R environment. This can be done by using setwd()

        e.g. setwd( "G:\\Work\\Coursera\\GetCleanData" )

3. Download and store the script **run_analysis.R** in your current working directory

4. Install the package **plyr** in your R environment, if it is not already installed.

        install.packages( "plyr" )

5. To run the script, source **run_analysis.R** script into the R environment and call **prepareTidyDataSet()** function

        > source( "run_analysis.R")
        > finaldataset <- prepareTidyDataSet()
        
  The script outputs following messages to the console during successful execution

        Loading the train dataset...
        Loading the test dataset...
        Loading other data files...
        Joining all datasets by subjectids and activity ids...
        Preparing the column names...
        Merging the train and test datasets...
        Calculating mean values of selected measurements...
        Processing complete and following two files are created
         - UCI-HAR-Dataset-Tidy.txt - Final tidy data set

6. Once executed successfully, it returns the data.frame which contains the final tidy dataset. The script also stores the final dataset in the following file in your current working directory. 

   __UCI-HAR-Dataset-Tidy.txt__
   
   The output file is in csv format. The variables are explained in the [Codebook.md](https://github.com/manaranjanp/UCI-HAR-Dataset/blob/master/Codebook.md) file.
  
