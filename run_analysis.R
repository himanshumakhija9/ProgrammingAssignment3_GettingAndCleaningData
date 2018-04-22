library("dplyr")

getwd()
# filedir<- setwd('C:/Users/hmakhija/Documents/Himanshu/emoocs/coursera/Course 3/assignment/UCI HAR Dataset')

# Getting data ------------------------------------------------------------

activity_label<-read.table(paste0(getwd(),"/activity_labels.txt"),stringsAsFactors = F)
colnames(activity_label)<-c("activity_id","activity_name")
features<-read.table(paste0(getwd(),"/features.txt"),stringsAsFactors = F)

test1<-read.table(paste0(getwd(),"/test/","X_test.txt"),stringsAsFactors = F)
test2<-read.table(paste0(getwd(),"/test/","y_test.txt"),stringsAsFactors = F)
test3<-read.table(paste0(getwd(),"/test/","subject_test.txt"),stringsAsFactors = F)

testset<-cbind(test2,test3,test1)
colnames(testset)=c("activity_id","subject_id",features[,2])

train1<-read.table(paste0(getwd(),"/train/","X_train.txt"),stringsAsFactors = F)
train2<-read.table(paste0(getwd(),"/train/","y_train.txt"),stringsAsFactors = F)
train3<-read.table(paste0(getwd(),"/train/","subject_train.txt"),stringsAsFactors = F)

trainset<-cbind(train2,train3,train1)
colnames(trainset)=c("activity_id","subject_id",features[,2])

# Creating a single dataset -----------------------------------------------

merged<- rbind(trainset,testset)

# Descriptive Activity labels ---------------------------------------------------------

final<-merge(activity_label,merged,by="activity_id")

# Extracting mean and std columns -----------------------------------------

meancols<-grep("mean()",colnames(final))
stdcols<-grep("std()",colnames(final))

# Descriptive variable names ----------------------------------------------

colnames(final)<-gsub("^t", "time", colnames(final))
colnames(final)<-gsub("^f", "frequency", colnames(final))
colnames(final)<-gsub("Acc", "Accelerometer", colnames(final))
colnames(final)<-gsub("Gyro", "Gyroscope", colnames(final))
colnames(final)<-gsub("Mag", "Magnitude", colnames(final))
colnames(final)<-gsub("BodyBody", "Body", colnames(final))

# Independent tidy data ---------------------------------------------------

final<-tbl_df(final)
final2<-final[,c(1,2,3,meancols,stdcols)]
tidy<-aggregate(. ~subject_id + activity_id + activity_name, data=final2, FUN=mean)
tidy<-tbl_df(tidy)
write.table(tidy,paste0(getwd(),"/final_tidy.txt"),row.names = FALSE)

