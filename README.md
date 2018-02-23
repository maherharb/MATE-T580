# MATE-T580: Practical Data Science using R </BR>(A Drexel University Course)

Welcome to MATE-T580 course portal! This repository will serve as the home page for the course. Lectures, assignments, datasets for analysis, and solutions to assignments & quizzes will be posted here. Your first order of business should be to carefully read this page to learn about the course's content, structure, and week-by-week plan of study.  

## Overview
MATE-T580 is designed as an introduction to data science for students with no prior knowledge of the subject. ***MATE-T580 covers all steps of the data science pipeline***: from getting and cleaning data, to performing exploratory analysis, producing meaningful visualizations, all the way to building predictive models. Students will be introduced to some of the most powerful machine learning algorithms used in the industry, including artificial neural network (ANN) and gradient boosting machine (GBM). Throughout the course, emphasis will be on the practical aspects of data science (as opposed to the theoretical/statistical aspect). Students will work with real datasets and will do a lot of coding using R/RStudio. 

## Prerequisites
Some knowledge of R is required before taking the course. To start with, I suggest completing the following courses on DataCamp:
- [Introduction to R](https://www.datacamp.com/courses/free-introduction-to-r) (4 hours, Free)
- [Intermediate R](https://www.datacamp.com/courses/intermediate-r) (6 hours, Premium content)

And this interactive course within R:
- [swirl](http://swirlstats.com/students.html)

Note that Drexel students who are registered for the course will receive a special invitation for accessing premium content on DataCamp to complete the prerequisites. ***When signing up for DataCamp, use your Drexel shortname email*** so that your account can be linked to your Drexel identity.   

## Course structure
At its core, Data Science is a combination of coding and performing statistical analysis. As the focus of the course is on the R implementation of various Data Science techniques, you learn best through hands on coding projects. As such, the course is structured to ensure that students complete ~100 hours of coding over the 10-week duration of the course. This is achieved through the following components:
- ***Classroom-lab hybrid***: Classroom time will be run as a lab rather than a traditional lecture. Students are required to always have a laptop with R and Rstudio installed on, ready to use in class. The instructor will present certain concepts and the studnets will follow by working on related coding tasks.
- ***Weekly DataCamp assignments*** (~4 hours each): A blend of mini video lectures and guided hands on exercises. The topics closely follow the topics we learn in class and thus reinforce in-class leaning and provide additional avenue for getting hands on practice in R.
- ***Bi-weekly assignments***: More challenging assignments using real datasets. These assignments test the students ability to apply their subject knowledge to a problem with little guidance.
- ***Capstone project***: TBD

## Course Plan

Week | Overview | DataCamp Assignment
--- | --- | ---  
Prereq | Prior to our very first meeting, you are expected to: install R and Rstudio on a laptop that you will always have with you in class and complete some interactive learning exercises on DataCamp.|<ul><li>Introduction to RM</li><li>Intermediate R</li><li>Swirl</li></ul>
|1</BR>(4/2)|	We’ll learn how to manipulate data frames using the dplyr package. dplyr offers many advantages over equivalent functions in base R including performance, compactness of code, and readability of code.| Data Manipulation with dplyr
|2</BR>(4/9)|	We’ll continue building on the work done in the previous week. However, we’ll start to pay more attention to the structure of the data and what it means to have ‘tidy data’.| Cleaning Data in R
|3</BR>(4/16)|	We’ll get introduced to the different R packages used to extract data from csv files, webpages, and text files. We’ll also learn how to use regular expressions to parse text. |Importing data from flat files with utils</BR>readr & data.table</BR>Importing data from the web (Part 1)</BR>Importing data from the web (Part 2)
|4</BR>(4/23)|	We’ll learn about producing high quality and meaningful visualizations in R using the ggplot package. The focus will be on scatter plots, line plots, and bar plots.| Data Visualization with ggplot2 (Part 1)</BR>Coordinates and Facets
|5</BR>(4/30)|	We’ll get introduced to important concepts in statistical learning including the bias-variance trade off, learning curves, feature selection, regularization, and cross validation.|	Correlation and Regression
|6</BR>(5/7)|	We’ll focus on the linear and logistic regression as the two baseline methods used respectively in regression and classification problems.| Multiple Regression</BR>Logistic Regression</BR>Case study: Italian restaurants in NYC
|7</BR>(5/14)|	We’ll focus on tree-based machine learning methods to solve classification and regression type problems. We’ll learn how to train models using random forest and xgboost (gradient boosting machine).|	Machine Learning Toolbox
|8</BR>(5/21)|	We’ll get introduced to another very popular machine learning algorithm: Artificial neural network (ann). We’ll learn how to perform ann learning in R using the nnet package.| TBD	
|9</BR>(5/28)|	We’ll get introduced to text mining and we’ll learn how to perform machine learning on unstructured data (text).| TBD
|10</BR>(6/4)|	We’ll conclude with a survey of advanced topics not discussed in this course, and with advice on how to continue your journey to become a data scientist.	|TBD




