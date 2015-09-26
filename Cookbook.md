#Cookbook
##About the data
---
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

##Variables
---
The variables in the tidy data file are as follows:

[1] "activity_id"                                     
[2] "activity_name"                                   
[3] "subject_id"                                      
[4] "time_body_accelerometer_mean_X"                  
[5] "time_body_accelerometer_mean_Y"                  
[6] "time_body_accelerometer_mean_Z"                  
[7] "time_body_accelerometer_std_X"                   
[8] "time_body_accelerometer_std_Y"                   
[9] "time_body_accelerometer_std_Z"                   
[10] "time_gravity_accelerometer_mean_X"               
[11] "time_gravity_accelerometer_mean_Y"               
[12] "time_gravity_accelerometer_mean_Z"               
[13] "time_gravity_accelerometer_std_X"                
[14] "time_gravity_accelerometer_std_Y"                
[15] "time_gravity_accelerometer_std_Z"                
[16] "time_body_accelerometer_jerk_mean_X"             
[17] "time_body_accelerometer_jerk_mean_Y"             
[18] "time_body_accelerometer_jerk_mean_Z"             
[19] "time_body_accelerometer_jerk_std_X"              
[20] "time_body_accelerometer_jerk_std_Y"              
[21] "time_body_accelerometer_jerk_std_Z"              
[22] "time_body_gyroscope_mean_X"                      
[23] "time_body_gyroscope_mean_Y"                      
[24] "time_body_gyroscope_mean_Z"                      
[25] "time_body_gyroscope_std_X"                       
[26] "time_body_gyroscope_std_Y"                       
[27] "time_body_gyroscope_std_Z"                       
[28] "time_body_gyroscope_jerk_mean_X"                 
[29] "time_body_gyroscope_jerk_mean_Y"                 
[30] "time_body_gyroscope_jerk_mean_Z"                 
[31] "time_body_gyroscope_jerk_std_X"                  
[32] "time_body_gyroscope_jerk_std_Y"                  
[33] "time_body_gyroscope_jerk_std_Z"                  
[34] "time_body_accelerometer_magnitude_mean"          
[35] "time_body_accelerometer_magnitude_std"           
[36] "time_gravity_accelerometer_magnitude_mean"       
[37] "time_gravity_accelerometer_magnitude_std"        
[38] "time_body_accelerometer_jerk_magnitude_mean"     
[39] "time_body_accelerometer_jerk_magnitude_std"      
[40] "time_body_gyroscope_magnitude_mean"              
[41] "time_body_gyroscope_magnitude_std"               
[42] "time_body_gyroscope_jerk_magnitude_mean"         
[43] "time_body_gyroscope_jerk_magnitude_std"          
[44] "frequency_body_accelerometer_mean_X"             
[45] "frequency_body_accelerometer_mean_Y"             
[46] "frequency_body_accelerometer_mean_Z"             
[47] "frequency_body_accelerometer_std_X"              
[48] "frequency_body_accelerometer_std_Y"              
[49] "frequency_body_accelerometer_std_Z"              
[50] "frequency_body_accelerometer_jerk_mean_X"        
[51] "frequency_body_accelerometer_jerk_mean_Y"        
[52] "frequency_body_accelerometer_jerk_mean_Z"        
[53] "frequency_body_accelerometer_jerk_std_X"         
[54] "frequency_body_accelerometer_jerk_std_Y"         
[55] "frequency_body_accelerometer_jerk_std_Z"         
[56] "frequency_body_gyroscope_mean_X"                 
[57] "frequency_body_gyroscope_mean_Y"                 
[58] "frequency_body_gyroscope_mean_Z"                 
[59] "frequency_body_gyroscope_std_X"                  
[60] "frequency_body_gyroscope_std_Y"                  
[61] "frequency_body_gyroscope_std_Z"                  
[62] "frequency_body_accelerometer_magnitude_mean"     
[63] "frequency_body_accelerometer_magnitude_std"      
[64] "frequency_body_accelerometer_jerk_magnitude_mean"
[65] "frequency_body_accelerometer_jerk_magnitude_std" 
[66] "frequency_body_gyroscope_magnitude_mean"         
[67] "frequency_body_gyroscope_magnitude_std"          
[68] "frequency_body_gyroscope_jerk_magnitude_mean"    
[69] "frequency_body_gyroscope_jerk_magnitude_std"

Among the column names above every column is of class "numeric" except "activity_name" which is of the class "factor"    

##The process of cleaning the data
- Read the data from training and test datasets
- Merge the training and test datasets 
- Extract columns with mean and standard deviation 
- Rename the column to something more readable
- Calculate the mean of the selected features and create a new data frame out of it
- Add activity names to the newly created dataframe
- Write the dataframe to `tidy_data.txt` file.
