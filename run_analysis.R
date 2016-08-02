# This r program assumes that the datafile is already downloaded and unzipped
# if not, start with
#
# Part 0.1 Download as rawdata.zip 
#
# filename <- "rawdata.zip"
# if (!file.exists(filename)){
#        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#        download.file(fileURL, filename, method="curl")
#       }  
#
# Part 0.2 Unzip
# setwd("/Users/jpbogers/Dropbox/Coursera/Getting and cleaning data/Week 4 opdr/")
# if (!file.exists("UCI HAR Dataset")) { 
#        unzip(filename) 
#       }

library(dplyr)

# Part 1: Reading in and merging datasets
setwd("/Users/jpbogers/Dropbox/Coursera/Getting and cleaning data/Week 4 opdr/UCI HAR Dataset")
train_data <- read.table("train/X_train.txt")
train_labels <- read.table("train/y_train.txt")
train_subject <- read.table("train/subject_train.txt")
test_data <- read.table("test/X_test.txt")
test_labels <- read.table("test/y_test.txt")
test_subject <- read.table("test/subject_test.txt")

total_data <- rbind(train_data, test_data)
total_labels <- rbind(train_labels, test_labels)
total_subjects <- rbind(train_subject, test_subject)

# Part2: Extracting mean and std info
features <- read.table("features.txt")
names(total_data)<-features[,2]
data_std_mean<-total_data[,grep(".*mean.*|.*std.*", features[,2])]

# Part 3: Merging activity data with type of activity (labels) and subjects
data_stdmean_act<-cbind(data_std_mean, total_labels)
names(data_stdmean_act)<-c(names(data_std_mean), "Activity")
data_stdmeanact_subj<-cbind(data_stdmean_act, total_subjects)
names(data_stdmeanact_subj)<-c(names(data_stdmean_act), "Subject")

# Part 4: Averaging per subject and per activity and creating correct human readable column names
data_stdmeanactsubj_mean <- data_stdmeanact_subj %>% group_by(Subject, Activity) %>%  summarise_each(funs(mean))
names(data_stdmeanactsubj_mean)<-paste("Average", names(data_stdmeanactsubj_mean), sep="_")
names(data_stdmeanactsubj_mean)[1]<-"Subject"
names(data_stdmeanactsubj_mean)[2]<-"Activity"

# Part 5: writing out tidy dataset
write.table(data_stdmeanactsubj_mean, file="tidy_data.txt", row.names = FALSE, quote = FALSE)

# Part 6: Cleaning up workspace
rm(list=ls())