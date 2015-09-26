# Course Project2
Getting and Cleaning data course project 2

## Project structure
- run_analysis.R - script which is used to generate the tidy dataset
- Readme.md - which is this document
- Cookbook.md - which is the cookbook for the tidy dataset, contains information about the various variables and the about the data.

## How to run the script ?
    R CMD BATCH "/PATH_TO_THE_SCRIPT/run_analysis.R"


## Pre-requisites
The main script is the **run_analysis.R**. The script requires the **plyr** package.
If you don't have the `plyr` package you can install it using the following command

    install.packages("plyr")

## Output
The script should output a tidy_data.txt file in the directory from which the script is run from.

