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

1.  Subject
2.  Activity
3.  TimeBodyAccMeanX
4.  TimeBodyAccMeanY
5.  TimeBodyAccMeanZ
6.  TimeGraviTimeyAccMeanX
7.  TimeGraviTimeyAccMeanY
8.  TimeGraviTimeyAccMeanZ
9.  TimeBodyAccJerkMeanX
10. TimeBodyAccJerkMeanY
11. TimeBodyAccJerkMeanZ
12. TimeBodyGyroMeanX
13. TimeBodyGyroMeanY
14. TimeBodyGyroMeanZ
15. TimeBodyGyroJerkMeanX
16. TimeBodyGyroJerkMeanY
17. TimeBodyGyroJerkMeanZ
18. TimeBodyAccMagMean
19. TimeGraviTimeyAccMagMean
20. TimeBodyAccJerkMagMean
21. TimeBodyGyroMagMean
22. TimeBodyGyroJerkMagMean
23. FrqBodyAccMeanX
24. FrqBodyAccMeanY
25. FrqBodyAccMeanZ
26. FrqBodyAccMeanFreqX
27. FrqBodyAccMeanFreqY
28. FrqBodyAccMeanFreqZ
29. FrqBodyAccJerkMeanX
30. FrqBodyAccJerkMeanY
31. FrqBodyAccJerkMeanZ
32. FrqBodyAccJerkMeanFreqX
33. FrqBodyAccJerkMeanFreqY
34. FrqBodyAccJerkMeanFreqZ
35. FrqBodyGyroMeanX
36. FrqBodyGyroMeanY
37. FrqBodyGyroMeanZ
38. FrqBodyGyroMeanFreqX
39. FrqBodyGyroMeanFreqY
40. FrqBodyGyroMeanFreqZ
41. FrqBodyAccMagMean
42. FrqBodyAccMagMeanFreq
43. FrqBodyAccJerkMagMean
44. FrqBodyAccJerkMagMeanFreq
45. FrqBodyGyroMagMean
46. FrqBodyGyroMagMeanFreq
47. FrqBodyGyroJerkMagMean
48. FrqBodyGyroJerkMagMeanFreq
49. angleTimeBodyAccMean,graviTimey
50. angleTimeBodyAccJerkMean,graviTimeyMean
51. angleTimeBodyGyroMean,graviTimeyMean
52. angleTimeBodyGyroJerkMean,graviTimeyMean
53. angleX,graviTimeyMean
54. angleY,graviTimeyMean
55. angleZ,graviTimeyMean
