Run_analysis.R script.

Step 1 of the script simply reads the raw dataset: train data, test data, and then put them together using rbind and cbind (cbind to put together the train and test data with subjects and activities).

Step 2 Extracts only the measurements on the mean and standard deviation for each measurement by using the "grep" function in combination with some regex.

In Step 3, we apply the activities labels to the dataset.

In step 4, we rename the column/variable names by replacing the abbreviations with their full names.

The last step is aggregating the previous dataset so that it gets the final tidy shape we want (aggregate function).


Code book:
The first column shows the number of the subjects who participated in this experiment.

The second column shows the type of activity they perform (Laying, sitting, standing, walking, walking downstairs, walking upstairs)

The other columns show the values of mean and standard deviation for each variable. 

Here is the list of columns:
Subject"                                     "Activity"                                   
 [3] "TimeBodyAccelerometermeanX"                  "TimeBodyAccelerometermeanY"                 
 [5] "TimeBodyAccelerometermeanZ"                  "TimeBodyAccelerometerstdX"                  
 [7] "TimeBodyAccelerometerstdY"                   "TimeBodyAccelerometerstdZ"                  
 [9] "TimeGravityAccelerometermeanX"               "TimeGravityAccelerometermeanY"              
[11] "TimeGravityAccelerometermeanZ"               "TimeGravityAccelerometerstdX"               
[13] "TimeGravityAccelerometerstdY"                "TimeGravityAccelerometerstdZ"               
[15] "TimeBodyAccelerometerJerkmeanX"              "TimeBodyAccelerometerJerkmeanY"             
[17] "TimeBodyAccelerometerJerkmeanZ"              "TimeBodyAccelerometerJerkstdX"              
[19] "TimeBodyAccelerometerJerkstdY"               "TimeBodyAccelerometerJerkstdZ"              
[21] "TimeBodyGyroscopemeanX"                      "TimeBodyGyroscopemeanY"                     
[23] "TimeBodyGyroscopemeanZ"                      "TimeBodyGyroscopestdX"                      
[25] "TimeBodyGyroscopestdY"                       "TimeBodyGyroscopestdZ"                      
[27] "TimeBodyGyroscopeJerkmeanX"                  "TimeBodyGyroscopeJerkmeanY"                 
[29] "TimeBodyGyroscopeJerkmeanZ"                  "TimeBodyGyroscopeJerkstdX"                  
[31] "TimeBodyGyroscopeJerkstdY"                   "TimeBodyGyroscopeJerkstdZ"                  
[33] "TimeBodyAccelerometerMagnitudemean"          "TimeBodyAccelerometerMagnitudestd"          
[35] "TimeGravityAccelerometerMagnitudemean"       "TimeGravityAccelerometerMagnitudestd"       
[37] "TimeBodyAccelerometerJerkMagnitudemean"      "TimeBodyAccelerometerJerkMagnitudestd"      
[39] "TimeBodyGyroscopeMagnitudemean"              "TimeBodyGyroscopeMagnitudestd"              
[41] "TimeBodyGyroscopeJerkMagnitudemean"          "TimeBodyGyroscopeJerkMagnitudestd"          
[43] "FrequencyBodyAccelerometermeanX"             "FrequencyBodyAccelerometermeanY"            
[45] "FrequencyBodyAccelerometermeanZ"             "FrequencyBodyAccelerometerstdX"             
[47] "FrequencyBodyAccelerometerstdY"              "FrequencyBodyAccelerometerstdZ"             
[49] "FrequencyBodyAccelerometerJerkmeanX"         "FrequencyBodyAccelerometerJerkmeanY"        
[51] "FrequencyBodyAccelerometerJerkmeanZ"         "FrequencyBodyAccelerometerJerkstdX"         
[53] "FrequencyBodyAccelerometerJerkstdY"          "FrequencyBodyAccelerometerJerkstdZ"         
[55] "FrequencyBodyGyroscopemeanX"                 "FrequencyBodyGyroscopemeanY"                
[57] "FrequencyBodyGyroscopemeanZ"                 "FrequencyBodyGyroscopestdX"                 
[59] "FrequencyBodyGyroscopestdY"                  "FrequencyBodyGyroscopestdZ"                 
[61] "FrequencyBodyAccelerometerMagnitudemean"     "FrequencyBodyAccelerometerMagnitudestd"     
[63] "FrequencyBodyAccelerometerJerkMagnitudemean" "FrequencyBodyAccelerometerJerkMagnitudestd" 
[65] "FrequencyBodyGyroscopeMagnitudemean"         "FrequencyBodyGyroscopeMagnitudestd"         
[67] "FrequencyBodyGyroscopeJerkMagnitudemean"     "FrequencyBodyGyroscopeJerkMagnitudestd"  



===================
