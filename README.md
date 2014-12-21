README - Class3Project
=============

### Project for Data Science Class 03 - Getting and Cleaning Data

## SYSTEM INFORMATION

Version of R used: R x64 3.1.2

Operating System: Win7 x64

## About:
All actions (from downloading the raw data to outputting the tidy data text file) 
are completed by running the run_analysis.R script.

### Step 1: Downloading and importing Data
First, the script downloads the data as a zip file. This zip file is unzipped into 
the "UCI HAR Dataset" folder. Each of the following relevant data set are then read into R:

* subject_train.txt
* X_train.txt
* Y_train.txt
* subject_text.txt
* X_test.txt
* Y_test.txt
* features.txt
* activity_labels.txt

### Step 2: Merging Data sets
The "_train" and "_test" datasets must be combined using rbind before the 3 resulting datasets
are merged together to form one large data set incorporating all of the data from the 8 files 
listed above. For our purposes, the "_test" data sets is appended to the corresponding 
"_train" data sets in all 3 cases. 

### Step 3: Descriptive Activity Names
The activity_labels.txt file contains labeling information that we merge with the dataset 
to give descriptions of the activities. We use "activity" and 
"activity_desc" for headers for the activity_labels.txt data set and merge this with our 
combined data set to give activity descriptions in the data.

### Step 4: Descriptive Variable Names
The features.txt file contains the labeling information that we use to give 
column headers to the measurement data in the combined data set. These are stored 
in the second column of the file "V2" and we replace the "()" with "_"
in order to help us in a next step and prevent issues with the grep function. 
This leads us to a single data set with labels. This 
is the data frame "data5" in the script.

### Step 5: Create an independent tidy data set (with averaged variables by subject and activity groupings)

By searching the measurement heading titles for "mean_" and "std_",
we find the 66 measurement variables we are interested in keeping. Eliminating the other variables,
we assign this smaller data set to "data6". We aggregate
the averages of these measurements by the subject group and the activity_desc variables. Since 
there are 30 subjects and 6 activities for each, we have 180 rows of data.
After relabeling the groups, we have our tidy data set "data7".

The script then outputs the tidy data set as "tidyData.txt", completing it's purpose.


### Note: You can read the tidy data set into R using the following code:

tidyurl <- "https://s3.amazonaws.com/coursera-uploads/user-b7f83c0cc0efa14158618f24/973758/asst-3/f08ac5e0894611e4a5847d3ba6346de4.txt"

tidydata <- read.table(tidyurl, header = TRUE)