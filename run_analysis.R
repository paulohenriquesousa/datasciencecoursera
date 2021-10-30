

library(reshape2)

# 1. Merge the training and test data
# Reading the train data
train_data <- read.table("X_train.txt")
train_activities <- read.table("y_train.txt")
train_subject <- read.table("subject_train.txt")

#Reading the test data
test_data <- read.table("X_test.txt")
test_activities <- read.table("y_test.txt")
test_subject <- read.table("subject_test.txt")

# Putting the previous datasets together
train_test <- rbind(train_data, test_data)
activities <- rbind(train_activities, test_activities)
subjects <- rbind(train_subject, test_subject)

all_data <- cbind(subjects, activities, train_test)



# 2. Extracts only the measurements on the mean and standard deviation for each measurement
#Reading features
features <- read.table("features.txt")
mean_std <- features[grep('-(mean|std)\\(\\)', features[, 2 ]), 2]

final_data <- all_data[, c(1, 2, mean_std)]


# 3. Uses descriptive activity names to name the activities in the data set
#Reading labels
labels <- read.table("activity_labels.txt")
final_data[, 2] <- labels[final_data[,2],2]


# 4. Appropriately labels the data set with descriptive variable names
colnames(final_data) <- c('Subject', 'Activity', gsub ('\\-|\\(|\\)', '', as.character(mean_std)))
names(final_data) <- gsub("^t", "Time", names(final_data))
names(final_data) <- gsub("^f", "Frequency", names(final_data))
names(final_data) <- gsub("Acc", "Accelerometer", names(final_data))
names(final_data) <- gsub("Gyro", "Gyroscope", names(final_data))
names(final_data) <- gsub("Mag", "Magnitude", names(final_data))
names(final_data) <- gsub("BodyBody", "Body", names(final_data))


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
#tidy_data <- melt(final_data, id= c('Subject', 'Activity'))

#tidy_mean <- aggregate(. ~Subject + Activity + variable, tidy_data, mean)

tidy_mean <- aggregate(. ~Subject + Activity, final_data, mean)                  

