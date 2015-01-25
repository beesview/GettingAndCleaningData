library(plyr)
library(data.table)

# download files
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "dataset.zip"
download.file(url, zipFile)

# unzip files
unzip(zipFile, exdir = ".")

# read files
xTrain = read.table("UCI HAR Dataset/train/X_train.txt")
# xTrain[,562] = read.csv("UCI HAR Dataset/train/Y_train.txt",header=FALSE)
# xTrain[,563] = read.csv("UCI HAR Dataset/train/subject_train.txt",header=FALSE)

xTest  = read.table("UCI HAR Dataset/test/X_test.txt")
# xTest[,562] = read.csv("UCI HAR Dataset/test/Y_test.txt",header=FALSE)
# xTest[,563] = read.csv("UCI HAR Dataset/test/subject_test.txt",header=FALSE)

yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
yTest  <- read.table("UCI HAR Dataset/test/y_test.txt")

subjTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjTest  <- read.table("UCI HAR Dataset/test/subject_test.txt")

actName <- read.table("UCI HAR Dataset/activity_labels.txt")[,2]

# merge data
xMerged <- rbind(xTrain, xTest)
yMerged <- rbind(yTrain, yTest)[, 1]
sMerged <- rbind(subjTrain, subjTest)[, 1]
activities <- actName[yMerged]

# set column names
colNames <- read.table("UCI HAR Dataset/features.txt")[, 2]

# modify column to be descriptive
colNames = gsub('t','Time',colNames)
colNames = gsub('f','Frq',colNames)
colNames = gsub('-mean','Mean',colNames)
colNames = gsub('-std','Std',colNames)
colNames = gsub('[-()]','',colNames)
colNames = gsub('BodyBody','Body',colNames)
# colNames = c(colNames,"Labels")
# colNames = c(colNames,"Subjects")

# assign variable names to the table
names(xMerged) <- colNames

# columns wanted
colsWanted <- grep(".*Mean.*|.*Std.*", names(xMerged))

# data wanted
df <- xMerged[, colsWanted]

tDf <- data.table(cbind(Subject = sMerged, Activity = activities, df))

tidy <- aggregate(tDf, by=list(Subject=tDf$Subject,Activity=tDf$Activity), FUN=mean)

# finally, write to file tidy.txt
write.table(tidy, "tidy.txt", sep="\t")