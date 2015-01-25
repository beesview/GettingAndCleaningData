#CodeBook for the tidy dataset
Please refer to README and features.txt files in the original dataset to learn more about the feature selection for this dataset.

#run_analysis.R transformation logic:
1. download source files
2. unzip files
3. read files into data.table
4. merge train and test data sets to form 3 data sets, measurements, activity labels, and subjects
5. fetch data set veriable names and modify them to become more descriptive
6. assign variable names to measurement data set
7. select variables with "mean" or "std" from measurements data set
8. merge 3 datasets, selected measurements, activity labels, and subjects. This is tidy data set
9. calculate mean for each measurements by subject by activity. This is tidy mean data set

#Variable Names in Tidy Data Set

Subject
Activity
TimeBodyAccMeanX
TimeBodyAccMeanY
TimeBodyAccMeanZ
TimeGraviTimeyAccMeanX
TimeGraviTimeyAccMeanY
TimeGraviTimeyAccMeanZ
TimeBodyAccJerkMeanX
TimeBodyAccJerkMeanY
TimeBodyAccJerkMeanZ
TimeBodyGyroMeanX
TimeBodyGyroMeanY
TimeBodyGyroMeanZ
TimeBodyGyroJerkMeanX
TimeBodyGyroJerkMeanY
TimeBodyGyroJerkMeanZ
TimeBodyAccMagMean
TimeGraviTimeyAccMagMean
TimeBodyAccJerkMagMean
TimeBodyGyroMagMean
TimeBodyGyroJerkMagMean
FrqBodyAccMeanX
FrqBodyAccMeanY
FrqBodyAccMeanZ
FrqBodyAccMeanFreqX
FrqBodyAccMeanFreqY
FrqBodyAccMeanFreqZ
FrqBodyAccJerkMeanX
FrqBodyAccJerkMeanY
FrqBodyAccJerkMeanZ
FrqBodyAccJerkMeanFreqX
FrqBodyAccJerkMeanFreqY
FrqBodyAccJerkMeanFreqZ
FrqBodyGyroMeanX
FrqBodyGyroMeanY
FrqBodyGyroMeanZ
FrqBodyGyroMeanFreqX
FrqBodyGyroMeanFreqY
FrqBodyGyroMeanFreqZ
FrqBodyAccMagMean
FrqBodyAccMagMeanFreq
FrqBodyAccJerkMagMean
FrqBodyAccJerkMagMeanFreq
FrqBodyGyroMagMean
FrqBodyGyroMagMeanFreq
FrqBodyGyroJerkMagMean
FrqBodyGyroJerkMagMeanFreq
angleTimeBodyAccMean,graviTimey
angleTimeBodyAccJerkMean,graviTimeyMean
angleTimeBodyGyroMean,graviTimeyMean
angleTimeBodyGyroJerkMean,graviTimeyMean
angleX,graviTimeyMean
angleY,graviTimeyMean
angleZ,graviTimeyMean
