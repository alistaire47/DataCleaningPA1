library(dplyr)

# Read in data
features <- read.table('features.txt')
train <- read.table('./train/X_train.txt', col.names=features[,2])
trainAct <- read.table('./train/y_train.txt', col.names='Activity')
trainSub <- read.table('./train/subject_train.txt', col.names='Subject')
test <- read.table('./test/X_test.txt', col.names=features[,2])
testAct <- read.table('./test/y_test.txt', col.names='Activity')
testSub <- read.table('./test/subject_test.txt', col.names='Subject')
actLab <- read.table('activity_labels.txt')

# Merge train and test data
data <- rbind(train, test)
act <- rbind(trainAct, testAct)
sub <- rbind(trainSub, testSub)

# Make a list of mean and standard deviation variables, and prune to that list
desired <- c()
for (i in 1:561){
    if (grepl('mean', features[i,2]) || grepl('std', features[i,2])) {
        desired <- c(desired, i)
    }
}

data <- data[, desired]

# Make activity descriptive, and factorize activity and subject ID#
act$Activity <- factor(act$Activity, levels=1:6, labels=actLab[,2])
sub$Subject <- factor(sub$Subject)

# Combine subject ID, activity, and mean and standard deviation columns
data <- cbind(sub, act, data)
data <- tbl_df(data)

# Write cleaned data to 'data.txt' file
write.table(data, file='data.txt', row.name=FALSE)

# For each activity for each subject, means of each variable
avgs <- data %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

# Write a file named 'averages.txt' of the avgs data.frame just created
write.table(avgs, file='averages.txt', row.name=FALSE)
