## Cleaning UCI HAR Dataset for Coursera Getting and Cleaning Data
This repo contains data from the UCI Human Activity Recognition Using 
Smartphones Dataset v1.0, as well as an R script to clean it.

### What's here:

Data and documentation from UCI HAR Dataset:  

- "test" directory and contents
- "train" directory and contents  
- activity_labels.txt  
- features_info.txt  
- features.txt  
- README.txt: further describes these files.

Cleaning code, documentation, and output data:  

- averages.txt: averages of variables by subject and activity
- CodeBook.html: codebook.md knit into html
- CodeBook.md: description of variables in data.txt and averages.txt
- data.txt: cleaned data
- output_variables.txt: a list of variables in data.txt and averages.txt
- README.html: knit from this document
- README.md: this document
- run_analysis.R: cleaning script

### What run_analysis.R does:
The run_analysis.R script imports the UCI HAR data, combines it into a single 
data.frame including subject and activity for each reading, and subsets to 
variables that are a mean or standard deviation. It replaces activities with a 
factor with readable descriptions. The cleaned data is saved as "data.txt".

The script then calculates the means of each variable for each activity for 
each subject using dplyr::summarise_each. This data.frame is then saved as 
"averages.txt".

### Note on paths
The script is designed to be run from the current location relative to the UCI 
HAR data. Paths in the script are relative, and should not need updating. 
Output is to the same directory.

### Dependencies

- R
- dplyr package (at least version 0.2)