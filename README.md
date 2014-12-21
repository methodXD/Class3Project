README - Class3Project
=============

## Project for Data Science Class 03 - Getting and Cleaning Data

Version of R used: R x64 3.1.2

Operating System: Win7 x64

### About:
All actions (from downloading the raw data to outputting the tidy data text file) 
are completed by running the run_analysis.R script.

First, the script downloads the data as a zip file. This zip file is unzipped into 
the "UCI HAR Dataset" folder. Each relevant data set is read into R:

* subject_train.txt
* X_train.txt
* Y_train.txt
* subject_text.txt
* X_test.txt
* Y_test.txt
* features.txt
* activity_labels.txt

Activity labels are applied and the data source is recorded as the corresponding 
training and testing data sets are combined. The subject and activity data are merged
into the data frame "data1". An id is added to retain row order after the merge operation.
The activity description column is labeled using the activity data frame and the merge function.
Rows and columns are then reordered. Measurement data is then combined. The data columns are
labeled using the features data frame and substituting the "()" with an underscore "_" to 
prevent issues using the grep function. Measurement data is then combined with the previous
data to give us a combined data set of our raw data in data frame "data5".

In order to reduce the full dataset down to the relevant mean and standard deviation
measurements, we must use a search function to find the "mean" and "std" measurements.
This give us "data6"
Using the aggregate function, we group by subject and activity description and calculate the
mean of the measurements by these 180 groups. After relabeling the groups, we have our
tidy data set "data7".

The script then outputs the tidy data set as "tidyData.txt", completing it's purpose.

