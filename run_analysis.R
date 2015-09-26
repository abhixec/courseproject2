# Author: Abhinav
# Course 2

#packages
library(plyr)
#  Download and unzip the data
file_url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file_url,method="curl",destfile = "Dataset.zip")
unzip("Dataset.zip")

#Load data
feature_labels<-read.table("UCI HAR Dataset/features.txt",sep="",header=FALSE)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity_name"))
training_data<-read.table("UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE,col.names = feature_labels$V2)
training_labels<-read.table("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE,col.names = "activity_id")
training_subject<-read.table("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE,col.names = "subject_id")
test_data<-read.table("UCI HAR Dataset/test/X_test.txt",sep="",header=FALSE,col.names=feature_labels$V2)
test_labels<-read.table("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE,col.names="activity_id")
test_subject<-read.table("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE,col.names="subject_id")

#Merge training dataset and test data set
merged_data<-rbind(training_data,test_data)
merged_labels<-rbind(training_labels,test_labels)
merged_subject<-rbind(training_subject,test_subject)


#Getting the mean and standard deviation
selected.cols <- grep("mean\\(\\)|std\\(\\)", feature_labels$V2)
data <- cbind(merged_subject, merged_labels, merged_data[, selected.cols])

#Renaming the column names to something better
# adds underscore to separate between labels
regex<-c("^t", "^f", "BodyBody", "Body", "Gravity", "Acc", "Gyro", "Jerk", "Mag", "X", "Y", "Z", "\\.")
new_colname<-c("time_", "frequency_", "Body", "body_", "gravity_", "accelerometer_","gyroscope_", "jerk_", "magnitude_","_X", "_Y", "_Z", "")

for ( i in seq_along(regex)){
  names(data)<-gsub(regex[i],new_colname[i],names(data))
}
names(data)

# Getting the average of each activity and subject
clean_data<-ddply(data,.(subject_id,activity_id),colMeans)
clean_data<-arrange(merge(activity_labels,clean_data),activity_id,subject_id)
#clean_data
write.table(clean_data,"tidy_data.txt",row.names=FALSE)
names(clean_data)
