Getting and Cleaning Data - Data Science Specialization - JHU.
Student: William A. Jacques
Date: 21/09/2014


Code Book for the CGD Project.


First, the new tidy data set was created by separating the Time domain from the Frequency domain.
Time and Frequency are distinct concepts, therefore they must be placed in different tables. 


Second, the "run_analysis.R" script creates 8 distint tables:

1 - Subjects: A simple table with only the subjects identifiers.

2 - Activities: A simple table with the acitvity identifier and the activity description.

3 - Activities_Time_Average: This table represents the average time spend doing every activities by all individuals. 
It has 42 parameters. 40 time parameters from the Samsung data set and 2 parameters for activity identification (from the Activities table). 

4 - Activities_Frequency_Average: This table represents the average frequency spend doing every activities by all individuals. 
It has 38 parameters. 36 frequency parameters from the Samsung data set and 2 parameters for activity identification (from the Activities table).

5 - Subjects_Time_Average: This table represents the average time spend by each individual doing all the activities. 
It has 41 parameters. 40 time parameters from the Samsung data set and 1 parameter for subject identification (from the Subjects table). 

6 - Subjects_Frequency_Average: This table represents the average frequency spend by each individual doing all the activities. 
It has 37 parameters. 36 frequency parameters from the Samsung data set and 1 parameter for subject identification (from the Subjects table). 

7 - Activities_Subjects_Time_Average: This table represents the average time spend by each individual doing each single activity. 
It has 42 parameters. 40 time parameters from the Samsung data set, 1 parameter for activity identification (from the Activities table) and 1 parameter for subject identification (from the Subjects table). 
The number of rows in this table is always equivalent to the number of individuals multiplied by the number of activities.

8 - Activities_Subjects_Frequency_Average: This table represents the average frequency spend by each individual doing each single activity. 
It has 38 parameters. 36 frequency parameters from the Samsung data set, 1 parameter for activity identification (from the Activities table) and 1 parameter for subject identification (from the Subjects table). 
The number of rows in this table is always equivalent to the number of individuals multiplied by the number of activities.

All the time parameters in the tables are in seconds and are specified by the prefix "Time". 
40 mean and std time parameters were extracted from the X_test and X_train files.

All the frequency parameters in the tables are in Hz and are specified by the prefix "Frequency".
36 mean and std frequency parameters were extracted from the X_test and X_train files.

The data from X_test and X_train were merged for all calculations.






