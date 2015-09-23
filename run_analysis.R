library(dplyr)

##Step 1: Merge the Training and Test Data Set 

 ## read in test data, features names, and test labels(test labels = activity)

    test_data <- read.table("~/R/UCI HAR Dataset/test/X_test.txt")
    
    test_labels <- read.table("~/R/UCI HAR Dataset/test/y_test.txt")
    test_subject <- read.table("~/R/UCI HAR Dataset/test/subject_test.txt")
    
 ## combine test labels to test data set
    
    test_full <- cbind(test_subject, test_labels, test_data)

 ## read in features and changes features to character vector and add as the column names
 ## of test data set

    features <- read.table("~/R/UCI HAR Dataset/features.txt")
    features <- as.character(features[,2])
    coln <- c("subject","activity", features)
    colnames(test_full) <- coln 
  
 ## repeat steps for training data set, use same coln vector (see above for description)
    
    train_data <- read.table("~/R/UCI HAR Dataset/train/X_train.txt")
    train_labels <- read.table("~/R/UCI HAR Dataset/train/y_train.txt")
    train_subject <- read.table("~/R/UCI HAR Dataset/train/subject_train.txt")
    
    train_full <- cbind(train_subject, train_labels, train_data)
    colnames(train_full) <- coln 
    
 ## row bind test full with train full to complete the merge
    
    full_data <- rbind(test_full, train_full)

 ## remove uneeded data
    rm(test_data)
    rm(train_data)
    rm(test_full)
    rm(train_full)
    rm(test_labels)
    rm(train_labels)
    rm(test_subject)
    rm(train_subject)
    
    

##Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
 ## extract mean positions
    mn <- grep("mean", coln)

 ## extract std positions
    sd <- grep("std", coln)


 ## combine, sort and add "subject" and then use to subset full data
    extract <- sort(c(1,2,mn,sd))
    full_extract <- full_data[,extract]

 ## remove freq
    freq <- grep("Freq", colnames(full_extract))
    full_extract <- full_extract[,-freq]
    
 ## remove uneeded objects
    rm(mn)
    rm(sd)
    rm(features)
    ##rm(extract)
    rm(full_data)

##Step 3: Uses descriptive activity names to name the activities in the data set
 ## read in activities and turn to character vector
    activity <- read.table("~/R/UCI HAR Dataset/activity_labels.txt")
    activity <- as.character(activity[,2])
    
 ## loop through activities and substitue with descriptive name    
    for (n in 1:6){
        full_extract$activity <- sub(n,activity[n],full_extract$activity)
    }

##Step 4: Appropriately labels the data set with descriptive variable names.

##From the data set in step 4, creates a second, independent tidy data set
##with the average of each variable for each activity and each subject
    full_df <- tbl_df(full_extract)
    by_sub_act <- group_by(full_df, subject, activity)
    summary_df <- summarise_each(by_sub_act, funs(mean))
    summary_df <- data.frame(summary_df)

## remove uneeded data
    rm(by_sub_act)
    rm(full_df)
    rm(full_extract)
    rm(activity)
    rm(coln)
    rm(extract)
    rm(freq)
    rm(n)
    
    
