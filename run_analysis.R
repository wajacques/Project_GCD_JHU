## Getting and Cleaning Data - Data Science Specialization - JHU.
## Student: William A. Jacques.
## Date: 21/09/2014.
## Course Project.


## Make sure the plyr packages is installed in your R version before running this script.

library(plyr)


## Make sure the unziped Samsung data is available under the subdirectory "data" in the current working directory. 

test_subjects_file<-"./data/test/subject_test.txt"
train_subjects_file<-"./data/train/subject_train.txt"

test_data_file<-"./data/test/X_test.txt"
train_data_file<-"./data/train/X_train.txt"

test_activities_file<-"./data/test/y_test.txt"
train_activities_file<-"./data/train/y_train.txt"

activities_file<-"./data/activity_labels.txt"

test_subjects <- read.table(test_subjects_file)
train_subjects <- read.table(train_subjects_file)

test_activities<-read.table(test_activities_file)
train_activities<-read.table(train_activities_file)  

test_data <- read.table(test_data_file,sep = "")
train_data <- read.table(train_data_file,sep = "")

activities<-read.table(activities_file,sep = "")

time_test<-cbind(test_subjects,test_activities,test_data[,1],test_data[,2],test_data[,3],test_data[,4],test_data[,5],test_data[,6],test_data[,41],test_data[,42],test_data[,43],test_data[,44],test_data[,45],test_data[,46],test_data[,81],test_data[,82],test_data[,83],test_data[,84],test_data[,85],test_data[,86],test_data[,121],test_data[,122],test_data[,123],test_data[,124],test_data[,125],test_data[,126],test_data[,161],test_data[,162],test_data[,163],test_data[,164],test_data[,165],test_data[,166],test_data[,201],test_data[,202],test_data[,214],test_data[,215],test_data[,227],test_data[,228],test_data[,240],test_data[,241],test_data[,253],test_data[,254])
time_train<-cbind(train_subjects,train_activities,train_data[,1],train_data[,2],train_data[,3],train_data[,4],train_data[,5],train_data[,6],train_data[,41],train_data[,42],train_data[,43],train_data[,44],train_data[,45],train_data[,46],train_data[,81],train_data[,82],train_data[,83],train_data[,84],train_data[,85],train_data[,86],train_data[,121],train_data[,122],train_data[,123],train_data[,124],train_data[,125],train_data[,126],train_data[,161],train_data[,162],train_data[,163],train_data[,164],train_data[,165],train_data[,166],train_data[,201],train_data[,202],train_data[,214],train_data[,215],train_data[,227],train_data[,228],train_data[,240],train_data[,241],train_data[,253],train_data[,254])

frequency_test<-cbind(test_subjects,test_activities,test_data[,266],test_data[,267],test_data[,268],test_data[,269],test_data[,270],test_data[,271],test_data[,294],test_data[,295],test_data[,296],test_data[,345],test_data[,346],test_data[,347],test_data[,348],test_data[,349],test_data[,350],test_data[,373],test_data[,374],test_data[,375],test_data[,424],test_data[,425],test_data[,426],test_data[,427],test_data[,428],test_data[,429],test_data[,503],test_data[,504],test_data[,513],test_data[,516],test_data[,517],test_data[,526],test_data[,529],test_data[,530],test_data[,539],test_data[,542],test_data[,543],test_data[,552])
frequency_train<-cbind(train_subjects,train_activities,train_data[,266],train_data[,267],train_data[,268],train_data[,269],train_data[,270],train_data[,271],train_data[,294],train_data[,295],train_data[,296],train_data[,345],train_data[,346],train_data[,347],train_data[,348],train_data[,349],train_data[,350],train_data[,373],train_data[,374],train_data[,375],train_data[,424],train_data[,425],train_data[,426],train_data[,427],train_data[,428],train_data[,429],train_data[,503],train_data[,504],train_data[,513],train_data[,516],train_data[,517],train_data[,526],train_data[,529],train_data[,530],train_data[,539],train_data[,542],train_data[,543],train_data[,552])

colnames(time_test) <- c("subject_id","activity_id","Time-Body-Acceleration-X(mean)","Time-Body-Acceleration-Y(mean)","Time-Body-Acceleration-Z(mean)","Time-Body-Acceleration-X(std)","Time-Body-Acceleration-Y(std)","Time-Body-Acceleration-Z(std)","Time-Gravity-Acceleration-X(mean)","Time-Gravity-Acceleration-Y(mean)","Time-Gravity-Acceleration-Z(mean)","Time-Gravity-Acceleration-X(std)","Time-Gravity-Acceleration-Y(std)","Time-Gravity-Acceleration-Z(std)","Time-Body-Acceleration-Jerk-X(mean)","Time-Body-Acceleration-Jerk-Y(mean)","Time-Body-Acceleration-Jerk-Z(mean)","Time-Body-Acceleration-Jerk-X(std)","Time-Body-Acceleration-Jerk-Y(std)","Time-Body_Acceleration-Jerk-Z(std)","Time-Body-Gyro-X(mean)","Time-Body-Gyro-Y(mean)","Time-Body-Gyro-Z(mean)","Time-Body-Gyro-X(std)","Time-Body-Gyro-Y(std)","Time-Body-Gyro-Z(std)","Time-Body-Gyro-Jerk-X(mean)","Time-Body-Gyro-Jerk-Y(mean)","Time-Body-Gyro-Jerk-Z(mean)","Time-Body-Gyro-Jerk-X(std)","Time-Body-Gyro-Jerk-Y(std)","Time-Body-Gyro-Jerk-Z(std)","Time-Body-Acceleration-Magnitude(mean)","Time-Body-Acceleration-Magnitude(std)","Time-Gravity-Acceleration-Magnitude(mean)","Time-Gravity-Acceleration-Magnitude(std)","Time-Body-Acceleration-Jerk-Magnitude(mean)","Time-Body-Acceleration-Jerk-Magnitude(std)","Time-Body-Gyro-Magnitude(mean)","Time-Body-Gyro-Magnitude(std)","Time-Body-Gyro-Jerk-Magnitude(mean)","Time-Body-Gyro-Jerk-Magnitude(std)")
colnames(time_train) <- c("subject_id","activity_id","Time-Body-Acceleration-X(mean)","Time-Body-Acceleration-Y(mean)","Time-Body-Acceleration-Z(mean)","Time-Body-Acceleration-X(std)","Time-Body-Acceleration-Y(std)","Time-Body-Acceleration-Z(std)","Time-Gravity-Acceleration-X(mean)","Time-Gravity-Acceleration-Y(mean)","Time-Gravity-Acceleration-Z(mean)","Time-Gravity-Acceleration-X(std)","Time-Gravity-Acceleration-Y(std)","Time-Gravity-Acceleration-Z(std)","Time-Body-Acceleration-Jerk-X(mean)","Time-Body-Acceleration-Jerk-Y(mean)","Time-Body-Acceleration-Jerk-Z(mean)","Time-Body-Acceleration-Jerk-X(std)","Time-Body-Acceleration-Jerk-Y(std)","Time-Body_Acceleration-Jerk-Z(std)","Time-Body-Gyro-X(mean)","Time-Body-Gyro-Y(mean)","Time-Body-Gyro-Z(mean)","Time-Body-Gyro-X(std)","Time-Body-Gyro-Y(std)","Time-Body-Gyro-Z(std)","Time-Body-Gyro-Jerk-X(mean)","Time-Body-Gyro-Jerk-Y(mean)","Time-Body-Gyro-Jerk-Z(mean)","Time-Body-Gyro-Jerk-X(std)","Time-Body-Gyro-Jerk-Y(std)","Time-Body-Gyro-Jerk-Z(std)","Time-Body-Acceleration-Magnitude(mean)","Time-Body-Acceleration-Magnitude(std)","Time-Gravity-Acceleration-Magnitude(mean)","Time-Gravity-Acceleration-Magnitude(std)","Time-Body-Acceleration-Jerk-Magnitude(mean)","Time-Body-Acceleration-Jerk-Magnitude(std)","Time-Body-Gyro-Magnitude(mean)","Time-Body-Gyro-Magnitude(std)","Time-Body-Gyro-Jerk-Magnitude(mean)","Time-Body-Gyro-Jerk-Magnitude(std)")

colnames(frequency_test) <- c("subject_id","activity_id","Frequency-Body-Acceleration-X(mean)","Frequency-Body-Acceleration-Y(mean)","Frequency-Body-Acceleration-Z(mean)","Frequency-Body-Acceleration-X(std)","Frequency-Body-Acceleration-Y(std)","Frequency-Body-Acceleration-Z(std)","Frequency-Body-Acceleration-X(meanFreq)","Frequency-Body-Acceleration-Y(meanFreq)","Frequency-Body-Acceleration-Z(meanFreq)","Frequency-Body-Acceleration-Jerk-X(mean)","Frequency-Body-Acceleration-Jerk-Y(mean)","Frequency-Body-Acceleration-Jerk-Z(mean)","Frequency-Body-Acceleration-Jerk-X(std)","Frequency-Body-Acceleration-Jerk-Y(std)","Frequency-Body-Acceleration-Jerk-Z(std)","Frequency-Body-Acceleration-Jerk-X(meanFreq)","Frequency-Body-Acceleration-Jerk-Y(meanFreq)","Frequency-Body-Acceleration-Jerk-Z(meanFreq)","Frequency-Body-Gyro-X(mean)","Frequency-Body-Gyro-Y(mean)","Frequency-Body-Gyro-Z(mean)","Frequency-Body-Gyro-X(std)","Frequency-Body-Gyro-Y(std)","Frequency-Body-Gyro-Z(std)","Frequency-Body-Acceleration-Magnitude(mean)","Frequency-Body-Acceleration-Magnitude(std)","Frequency-Body-Acceleration-Magnitude(meanFreq)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(mean)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(std)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Magnitude(mean)","Frequency-Body-Body-Gyro-Magnitude(std)","Frequency-Body-Body-Gyro-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Jerk-Magnitude(mean)","Frequency-Body-Body-Gyro-Jerk-Magnitude(std)","Frequency-Body-Body-Gyro-Jerk-Magnitude(meanFreq)")
colnames(frequency_train) <- c("subject_id","activity_id","Frequency-Body-Acceleration-X(mean)","Frequency-Body-Acceleration-Y(mean)","Frequency-Body-Acceleration-Z(mean)","Frequency-Body-Acceleration-X(std)","Frequency-Body-Acceleration-Y(std)","Frequency-Body-Acceleration-Z(std)","Frequency-Body-Acceleration-X(meanFreq)","Frequency-Body-Acceleration-Y(meanFreq)","Frequency-Body-Acceleration-Z(meanFreq)","Frequency-Body-Acceleration-Jerk-X(mean)","Frequency-Body-Acceleration-Jerk-Y(mean)","Frequency-Body-Acceleration-Jerk-Z(mean)","Frequency-Body-Acceleration-Jerk-X(std)","Frequency-Body-Acceleration-Jerk-Y(std)","Frequency-Body-Acceleration-Jerk-Z(std)","Frequency-Body-Acceleration-Jerk-X(meanFreq)","Frequency-Body-Acceleration-Jerk-Y(meanFreq)","Frequency-Body-Acceleration-Jerk-Z(meanFreq)","Frequency-Body-Gyro-X(mean)","Frequency-Body-Gyro-Y(mean)","Frequency-Body-Gyro-Z(mean)","Frequency-Body-Gyro-X(std)","Frequency-Body-Gyro-Y(std)","Frequency-Body-Gyro-Z(std)","Frequency-Body-Acceleration-Magnitude(mean)","Frequency-Body-Acceleration-Magnitude(std)","Frequency-Body-Acceleration-Magnitude(meanFreq)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(mean)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(std)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Magnitude(mean)","Frequency-Body-Body-Gyro-Magnitude(std)","Frequency-Body-Body-Gyro-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Jerk-Magnitude(mean)","Frequency-Body-Body-Gyro-Jerk-Magnitude(std)","Frequency-Body-Body-Gyro-Jerk-Magnitude(meanFreq)")

colnames(activities) <- c("activity_id","activity_description")

time_data_set <- arrange(join(activities,rbind(time_test,time_train)),activity_id)
frequency_data_set <- arrange(join(activities,rbind(frequency_test,frequency_train)),activity_id)

activities_time_data_set<-split(time_data_set,time_data_set$activity_id)
activities_frequency_data_set<-split(frequency_data_set,frequency_data_set$activity_id)

subjects_time_data_set<-split(time_data_set,time_data_set$subject_id)
subjects_frequency_data_set<-split(frequency_data_set,frequency_data_set$subject_id)

number_subjects<-30
subjects<-data.frame(matrix(1:number_subjects,ncol=1))
colnames(subjects)<-c("subject_id")

activities_dim<-dim(activities)
number_activities<-activities_dim[1]

time_data_set_dim<-dim(time_data_set)
frequency_data_set_dim<-dim(frequency_data_set)

activities_time_average <- cbind(activities,data.frame(matrix(0,ncol=(time_data_set_dim[2]-3),nrow=number_activities)))
activities_frequency_average <- cbind(activities,data.frame(matrix(0,ncol=(frequency_data_set_dim[2]-3),nrow=number_activities)))

subjects_time_average <- cbind(subjects,data.frame(matrix(0,ncol=(time_data_set_dim[2]-3),nrow=number_subjects)))
subjects_frequency_average <- cbind(subjects,data.frame(matrix(0,ncol=(frequency_data_set_dim[2]-3),nrow=number_subjects)))

colnames(activities_time_average) <- c("activity_id","activity_description","Time-Body-Acceleration-X(mean)","Time-Body-Acceleration-Y(mean)","Time-Body-Acceleration-Z(mean)","Time-Body-Acceleration-X(std)","Time-Body-Acceleration-Y(std)","Time-Body-Acceleration-Z(std)","Time-Gravity-Acceleration-X(mean)","Time-Gravity-Acceleration-Y(mean)","Time-Gravity-Acceleration-Z(mean)","Time-Gravity-Acceleration-X(std)","Time-Gravity-Acceleration-Y(std)","Time-Gravity-Acceleration-Z(std)","Time-Body-Acceleration-Jerk-X(mean)","Time-Body-Acceleration-Jerk-Y(mean)","Time-Body-Acceleration-Jerk-Z(mean)","Time-Body-Acceleration-Jerk-X(std)","Time-Body-Acceleration-Jerk-Y(std)","Time-Body_Acceleration-Jerk-Z(std)","Time-Body-Gyro-X(mean)","Time-Body-Gyro-Y(mean)","Time-Body-Gyro-Z(mean)","Time-Body-Gyro-X(std)","Time-Body-Gyro-Y(std)","Time-Body-Gyro-Z(std)","Time-Body-Gyro-Jerk-X(mean)","Time-Body-Gyro-Jerk-Y(mean)","Time-Body-Gyro-Jerk-Z(mean)","Time-Body-Gyro-Jerk-X(std)","Time-Body-Gyro-Jerk-Y(std)","Time-Body-Gyro-Jerk-Z(std)","Time-Body-Acceleration-Magnitude(mean)","Time-Body-Acceleration-Magnitude(std)","Time-Gravity-Acceleration-Magnitude(mean)","Time-Gravity-Acceleration-Magnitude(std)","Time-Body-Acceleration-Jerk-Magnitude(mean)","Time-Body-Acceleration-Jerk-Magnitude(std)","Time-Body-Gyro-Magnitude(mean)","Time-Body-Gyro-Magnitude(std)","Time-Body-Gyro-Jerk-Magnitude(mean)","Time-Body-Gyro-Jerk-Magnitude(std)")
colnames(activities_frequency_average) <- c("activity_id","activity_description","Frequency-Body-Acceleration-X(mean)","Frequency-Body-Acceleration-Y(mean)","Frequency-Body-Acceleration-Z(mean)","Frequency-Body-Acceleration-X(std)","Frequency-Body-Acceleration-Y(std)","Frequency-Body-Acceleration-Z(std)","Frequency-Body-Acceleration-X(meanFreq)","Frequency-Body-Acceleration-Y(meanFreq)","Frequency-Body-Acceleration-Z(meanFreq)","Frequency-Body-Acceleration-Jerk-X(mean)","Frequency-Body-Acceleration-Jerk-Y(mean)","Frequency-Body-Acceleration-Jerk-Z(mean)","Frequency-Body-Acceleration-Jerk-X(std)","Frequency-Body-Acceleration-Jerk-Y(std)","Frequency-Body-Acceleration-Jerk-Z(std)","Frequency-Body-Acceleration-Jerk-X(meanFreq)","Frequency-Body-Acceleration-Jerk-Y(meanFreq)","Frequency-Body-Acceleration-Jerk-Z(meanFreq)","Frequency-Body-Gyro-X(mean)","Frequency-Body-Gyro-Y(mean)","Frequency-Body-Gyro-Z(mean)","Frequency-Body-Gyro-X(std)","Frequency-Body-Gyro-Y(std)","Frequency-Body-Gyro-Z(std)","Frequency-Body-Acceleration-Magnitude(mean)","Frequency-Body-Acceleration-Magnitude(std)","Frequency-Body-Acceleration-Magnitude(meanFreq)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(mean)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(std)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Magnitude(mean)","Frequency-Body-Body-Gyro-Magnitude(std)","Frequency-Body-Body-Gyro-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Jerk-Magnitude(mean)","Frequency-Body-Body-Gyro-Jerk-Magnitude(std)","Frequency-Body-Body-Gyro-Jerk-Magnitude(meanFreq)")

colnames(subjects_time_average) <- c("subject_id","Time-Body-Acceleration-X(mean)","Time-Body-Acceleration-Y(mean)","Time-Body-Acceleration-Z(mean)","Time-Body-Acceleration-X(std)","Time-Body-Acceleration-Y(std)","Time-Body-Acceleration-Z(std)","Time-Gravity-Acceleration-X(mean)","Time-Gravity-Acceleration-Y(mean)","Time-Gravity-Acceleration-Z(mean)","Time-Gravity-Acceleration-X(std)","Time-Gravity-Acceleration-Y(std)","Time-Gravity-Acceleration-Z(std)","Time-Body-Acceleration-Jerk-X(mean)","Time-Body-Acceleration-Jerk-Y(mean)","Time-Body-Acceleration-Jerk-Z(mean)","Time-Body-Acceleration-Jerk-X(std)","Time-Body-Acceleration-Jerk-Y(std)","Time-Body_Acceleration-Jerk-Z(std)","Time-Body-Gyro-X(mean)","Time-Body-Gyro-Y(mean)","Time-Body-Gyro-Z(mean)","Time-Body-Gyro-X(std)","Time-Body-Gyro-Y(std)","Time-Body-Gyro-Z(std)","Time-Body-Gyro-Jerk-X(mean)","Time-Body-Gyro-Jerk-Y(mean)","Time-Body-Gyro-Jerk-Z(mean)","Time-Body-Gyro-Jerk-X(std)","Time-Body-Gyro-Jerk-Y(std)","Time-Body-Gyro-Jerk-Z(std)","Time-Body-Acceleration-Magnitude(mean)","Time-Body-Acceleration-Magnitude(std)","Time-Gravity-Acceleration-Magnitude(mean)","Time-Gravity-Acceleration-Magnitude(std)","Time-Body-Acceleration-Jerk-Magnitude(mean)","Time-Body-Acceleration-Jerk-Magnitude(std)","Time-Body-Gyro-Magnitude(mean)","Time-Body-Gyro-Magnitude(std)","Time-Body-Gyro-Jerk-Magnitude(mean)","Time-Body-Gyro-Jerk-Magnitude(std)")
colnames(subjects_frequency_average) <- c("subject_id","Frequency-Body-Acceleration-X(mean)","Frequency-Body-Acceleration-Y(mean)","Frequency-Body-Acceleration-Z(mean)","Frequency-Body-Acceleration-X(std)","Frequency-Body-Acceleration-Y(std)","Frequency-Body-Acceleration-Z(std)","Frequency-Body-Acceleration-X(meanFreq)","Frequency-Body-Acceleration-Y(meanFreq)","Frequency-Body-Acceleration-Z(meanFreq)","Frequency-Body-Acceleration-Jerk-X(mean)","Frequency-Body-Acceleration-Jerk-Y(mean)","Frequency-Body-Acceleration-Jerk-Z(mean)","Frequency-Body-Acceleration-Jerk-X(std)","Frequency-Body-Acceleration-Jerk-Y(std)","Frequency-Body-Acceleration-Jerk-Z(std)","Frequency-Body-Acceleration-Jerk-X(meanFreq)","Frequency-Body-Acceleration-Jerk-Y(meanFreq)","Frequency-Body-Acceleration-Jerk-Z(meanFreq)","Frequency-Body-Gyro-X(mean)","Frequency-Body-Gyro-Y(mean)","Frequency-Body-Gyro-Z(mean)","Frequency-Body-Gyro-X(std)","Frequency-Body-Gyro-Y(std)","Frequency-Body-Gyro-Z(std)","Frequency-Body-Acceleration-Magnitude(mean)","Frequency-Body-Acceleration-Magnitude(std)","Frequency-Body-Acceleration-Magnitude(meanFreq)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(mean)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(std)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Magnitude(mean)","Frequency-Body-Body-Gyro-Magnitude(std)","Frequency-Body-Body-Gyro-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Jerk-Magnitude(mean)","Frequency-Body-Body-Gyro-Jerk-Magnitude(std)","Frequency-Body-Body-Gyro-Jerk-Magnitude(meanFreq)")


activities_subjects_1_aux <- rep(1:number_activities,each=number_subjects)
activities_subjects_2_aux <- rep("description",(number_activities*number_subjects))

for(i in 1:(number_activities*number_subjects))
{
  
  activities_subjects_2_aux[i]<-as.character(activities[[2]][[activities_subjects_1_aux[i]]])
  
}

activities_subjects_1 <- data.frame(matrix(activities_subjects_2_aux,ncol=1,nrow=(number_activities*number_subjects)))
activities_subjects_2 <- data.frame(matrix(rep(seq(1:number_subjects),number_activities),ncol=1,nrow=(number_activities*number_subjects))) 
  
activities_subjects_time_average <- cbind(activities_subjects_1,activities_subjects_2,data.frame(matrix(0,ncol=(time_data_set_dim[2]-3),nrow=(number_activities*number_subjects))))
activities_subjects_frequency_average <- cbind(activities_subjects_1,activities_subjects_2,data.frame(matrix(0,ncol=(frequency_data_set_dim[2]-3),nrow=(number_activities*number_subjects))))

colnames(activities_subjects_time_average) <- c("activity_description","subject_id","Time-Body-Acceleration-X(mean)","Time-Body-Acceleration-Y(mean)","Time-Body-Acceleration-Z(mean)","Time-Body-Acceleration-X(std)","Time-Body-Acceleration-Y(std)","Time-Body-Acceleration-Z(std)","Time-Gravity-Acceleration-X(mean)","Time-Gravity-Acceleration-Y(mean)","Time-Gravity-Acceleration-Z(mean)","Time-Gravity-Acceleration-X(std)","Time-Gravity-Acceleration-Y(std)","Time-Gravity-Acceleration-Z(std)","Time-Body-Acceleration-Jerk-X(mean)","Time-Body-Acceleration-Jerk-Y(mean)","Time-Body-Acceleration-Jerk-Z(mean)","Time-Body-Acceleration-Jerk-X(std)","Time-Body-Acceleration-Jerk-Y(std)","Time-Body_Acceleration-Jerk-Z(std)","Time-Body-Gyro-X(mean)","Time-Body-Gyro-Y(mean)","Time-Body-Gyro-Z(mean)","Time-Body-Gyro-X(std)","Time-Body-Gyro-Y(std)","Time-Body-Gyro-Z(std)","Time-Body-Gyro-Jerk-X(mean)","Time-Body-Gyro-Jerk-Y(mean)","Time-Body-Gyro-Jerk-Z(mean)","Time-Body-Gyro-Jerk-X(std)","Time-Body-Gyro-Jerk-Y(std)","Time-Body-Gyro-Jerk-Z(std)","Time-Body-Acceleration-Magnitude(mean)","Time-Body-Acceleration-Magnitude(std)","Time-Gravity-Acceleration-Magnitude(mean)","Time-Gravity-Acceleration-Magnitude(std)","Time-Body-Acceleration-Jerk-Magnitude(mean)","Time-Body-Acceleration-Jerk-Magnitude(std)","Time-Body-Gyro-Magnitude(mean)","Time-Body-Gyro-Magnitude(std)","Time-Body-Gyro-Jerk-Magnitude(mean)","Time-Body-Gyro-Jerk-Magnitude(std)")
colnames(activities_subjects_frequency_average) <- c("activity_description","subject_id","Frequency-Body-Acceleration-X(mean)","Frequency-Body-Acceleration-Y(mean)","Frequency-Body-Acceleration-Z(mean)","Frequency-Body-Acceleration-X(std)","Frequency-Body-Acceleration-Y(std)","Frequency-Body-Acceleration-Z(std)","Frequency-Body-Acceleration-X(meanFreq)","Frequency-Body-Acceleration-Y(meanFreq)","Frequency-Body-Acceleration-Z(meanFreq)","Frequency-Body-Acceleration-Jerk-X(mean)","Frequency-Body-Acceleration-Jerk-Y(mean)","Frequency-Body-Acceleration-Jerk-Z(mean)","Frequency-Body-Acceleration-Jerk-X(std)","Frequency-Body-Acceleration-Jerk-Y(std)","Frequency-Body-Acceleration-Jerk-Z(std)","Frequency-Body-Acceleration-Jerk-X(meanFreq)","Frequency-Body-Acceleration-Jerk-Y(meanFreq)","Frequency-Body-Acceleration-Jerk-Z(meanFreq)","Frequency-Body-Gyro-X(mean)","Frequency-Body-Gyro-Y(mean)","Frequency-Body-Gyro-Z(mean)","Frequency-Body-Gyro-X(std)","Frequency-Body-Gyro-Y(std)","Frequency-Body-Gyro-Z(std)","Frequency-Body-Acceleration-Magnitude(mean)","Frequency-Body-Acceleration-Magnitude(std)","Frequency-Body-Acceleration-Magnitude(meanFreq)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(mean)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(std)","Frequency-Body-Body-Acceleration-Jerk-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Magnitude(mean)","Frequency-Body-Body-Gyro-Magnitude(std)","Frequency-Body-Body-Gyro-Magnitude(meanFreq)","Frequency-Body-Body-Gyro-Jerk-Magnitude(mean)","Frequency-Body-Body-Gyro-Jerk-Magnitude(std)","Frequency-Body-Body-Gyro-Jerk-Magnitude(meanFreq)")


for(i in 1:number_activities)
{
  
  for(j in 4:time_data_set_dim[2])
  {

    activities_time_average[[j-1]][[i]] <- mean(activities_time_data_set[[i]][[j]])
    
  }
  
  for(k in 4:frequency_data_set_dim[2])
  {
    
    activities_frequency_average[[k-1]][[i]] <- mean(activities_frequency_data_set[[i]][[k]])
    
  }
  
}


for(i in 1:number_subjects)
{
  
  for(j in 4:time_data_set_dim[2])
  {
    
    subjects_time_average[[j-2]][[i]] <- mean(subjects_time_data_set[[i]][[j]])
    
  }
  
  for(k in 4:frequency_data_set_dim[2])
  {
    
    subjects_frequency_average[[k-2]][[i]] <- mean(subjects_frequency_data_set[[i]][[k]])
    
  }
  
}

buffer<-seq(0,(number_subjects*number_activities))

for(j in 4:time_data_set_dim[2])
{
  
  for(i in 1:10299)
  {
    
      index <- ((time_data_set[[1]][[i]] - 1)*number_subjects) + time_data_set[[3]][[i]]
      activities_subjects_time_average[[j-1]][[index]] <- activities_subjects_time_average[[j-1]][[index]] + time_data_set[[j]][[i]]    
      buffer[index] <- buffer[index] + 1
      
  }
  
  for(k in 1:(number_subjects*number_activities))
  {
    
    activities_subjects_time_average[[j-1]][[k]] <- activities_subjects_time_average[[j-1]][[k]]/buffer[k]       
    buffer[k] <- 0
    
  }
      
}


buffer<-seq(0,(number_subjects*number_activities))

for(j in 4:frequency_data_set_dim[2])
{
  
  for(i in 1:10299)
  {
    
    index <- ((frequency_data_set[[1]][[i]] - 1)*number_subjects) + frequency_data_set[[3]][[i]]
    activities_subjects_frequency_average[[j-1]][[index]] <- activities_subjects_frequency_average[[j-1]][[index]] + frequency_data_set[[j]][[i]]    
    buffer[index] <- buffer[index] + 1
    
  }
  
  for(k in 1:(number_subjects*number_activities))
  {
    
    activities_subjects_frequency_average[[j-1]][[k]] <- activities_subjects_frequency_average[[j-1]][[k]]/buffer[k]       
    buffer[k] <- 0
    
  }
  
}

write.table(activities_time_average,"./activities_time_average.txt",row.names=FALSE)
write.table(activities_frequency_average,"./activities_frequency_average.txt",row.names=FALSE)

write.table(subjects_time_average,"./subjects_time_average.txt",row.names=FALSE)
write.table(subjects_frequency_average,"./subjects_frequency_average.txt",row.names=FALSE)

write.table(activities_subjects_time_average,"./activities_subjects_time_average.txt",row.names=FALSE)
write.table(activities_subjects_frequency_average,"./activities_subjects_frequency_average.txt",row.names=FALSE)

write.table(subjects,"./subjects.txt",row.names=FALSE)
write.table(activities,"./activities.txt",row.names=FALSE)
