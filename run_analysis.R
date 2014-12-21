# The following script 

# Download the data files and unzip the various files into a folder.
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./UCI HAR Dataset.zip", mode = "wb")
unzip("./UCI HAR Dataset.zip", exdir = ".")

# Read relevant data sets into R
strain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")
stest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Give labels to the activity table
names(activity) <- c("activity","activity_desc")

# Merge the subject data.
# The data source is recorded: "train" or "test" with column label "source"
strain$source <- "train"
stest$source <- "test"
sdata <- rbind(strain,stest)
names(sdata) <- c("subject","source")

# Merge the activity data.
ydata <- rbind(ytrain,ytest)
names(ydata) <- "activity"

# Combine subject and activity data into data frame "data1".
# Also add an id to retain row order after merge.
data1 <- cbind(id=(1:10299),sdata,ydata)
# Add activity description column "activity_desc" from activity data frame.
data2 <- merge(data1,activity,by.x="activity",by.y="activity")
data3 <- data2[order(data2$id),] # reorder rows
data4 <- data3[,c(2,3,4,1,5)]    # reorder columns

# Merge the measurement data.
# Label the columns using the second column of the features data frame.
xdata <- rbind(xtrain,xtest)
names(xdata) <- features[,"V2"]

# Combine measurement data with the previous data.
data5 <- cbind(data4,xdata)

# Search column names for the words "mean" and "std" to create vectors of 
# columns to retain in tidy dataset. "keepALL" gives us the final list.
colnames <- names(data5)
keep5 <- colnames[1:5]
keepMEAN <- colnames[grep("mean",colnames)]
keepSTD <- colnames[grep("std",colnames)]
keepMEAS <- append(keepMEAN,keepSTD)
keepALL <- append(keep5,keepMEAS)

# Data6 = All raw data merged into one data frame with labels and 
# activity descriptions added.
data6 <- data5[,keepALL]

# Data7 = Tidy data with grouped subject and activity averages per measurement
data7 <- aggregate(data6[,6:84],by=list(data6$subject,data6$activity_desc), mean)
colnames(data7)[1:2] <- c("subject","activity_desc") # Re-add labels.

# Create tidyData.txt file.
write.table(data7, file="tidyData.txt", row.name=FALSE)
