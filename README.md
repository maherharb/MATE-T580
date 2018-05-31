# MATE-T580: Practical Data Science using R </BR>(A Drexel University<sup>1</sup> [course](https://termmasterschedule.drexel.edu/webtms_du/app?component=courseDetails&page=CourseList&service=direct&sp=ZH4sIAAAAAAAAAFvzloG1uIhBPjWlVC%2BlKLUiNUcvs6hErzw1qSS3WC8lsSRRLyS1KJcBAhiZGJh9GNgTk0tCMnNTSxhEfLISyxL1iwtz9EECxSWJuQXWPgwcJUAtzvkpQBVCEBU5iXnp%2BsElRZl56TB5l9Ti5EKGOgamioKCEgY2IwNDc2NToJHBBSBVCoGliUVAZQqG5rqGFgD84zXupgAAAA%3D%3D&sp=SE&sp=SMATE&sp=S34497&sp=ST580&sp=6))

Welcome to MATE-T580 course portal! This repository will serve as the home page for the course. Lectures, assignments, datasets for analysis, and solutions to assignments & quizzes will be posted here. Your first order of business should be to carefully read this page to learn about the course's content, structure, and week-by-week plan of study.  

## Overview
MATE-T580 is designed as an introduction to data science for students with no prior knowledge of the subject. ***MATE-T580 covers all steps of the data science pipeline***: from getting and cleaning data, to performing exploratory analysis, producing meaningful visualizations, all the way to building predictive models. Students will be introduced to some of the most powerful machine learning algorithms used in the industry, including artificial neural network (ANN) and gradient boosting machine (GBM). Throughout the course, emphasis will be on the practical aspects of data science (as opposed to the theoretical/statistical aspect). Students will work with real datasets and will do a lot of coding using R. 

## Prerequisites
Some knowledge of R is required before taking the course. To start with, I suggest completing the following courses on DataCamp:
- [Introduction to R](https://www.datacamp.com/courses/free-introduction-to-r) (4 hours, Free)
- [Intermediate R](https://www.datacamp.com/courses/intermediate-r) (6 hours, Premium content)

And this interactive course within R:
- [swirl](http://swirlstats.com/students.html)

Note that Drexel students who are registered for the course will receive a special invitation for accessing premium content on DataCamp to complete the prerequisites. ***When signing up for DataCamp, use your Drexel shortname email*** so that your account can be linked to your Drexel identity.   

## Course structure
At its core, Data Science is a combination of coding and performing statistical analysis. As the focus of the course is on the R implementation of various Data Science techniques, you learn best through hands on coding projects. As such, the course is structured to ensure that students complete ~100 hours of coding over the 10-week duration of the course. This is achieved through the following components:
- ***Classroom-lab hybrid***: Classroom time will be run as a lab rather than a traditional lecture. Students are required to always have a laptop with R and Rstudio installed on, ready to use in class. The instructor will present certain concepts and the students will follow by working on related coding tasks. Within this environment, I expect that we'll have lots of stimulating discussions and opportunities to collaborate.
- ***Weekly DataCamp assignments*** (~4 hours each): A blend of mini video lectures and guided hands on exercises. The topics closely follow the topics we learn in class and thus reinforce in-class learning and provide additional avenue for getting hands on practice in R.
- ***Bi-weekly assignments***: More challenging [assignments](assignments_info.md) using real datasets. These assignments test the students ability to apply their subject knowledge to a problem with little guidance (relative to the DataCamp exercises and the in-class activities). The assignments present an opportunity to do work at the level expected in an actual professional setting.
- ***Capstone project***: The capstone project provides a chance for students to perform analysis on a dataset of their own choosing. The analysis should include an advanced topic that was not covered in class. A list of potential topics is included [here](project_info.md), but students are welcome to come up with a topic not included in the list (subject to approval of the course instructor). The deliverable is a 10-minute presentation followed by a Q&A session during the last week of the course.

## Course Plan

<div class="course_plan">

Week, Lesson</BR></BR>&nbsp;  | Overview</BR></BR>&nbsp; | DataCamp Assignment &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
--- | --- | -----  
Prereq | Prior to our very first meeting, you are expected to: install R and Rstudio on a laptop that you will always have with you in class and complete some interactive learning exercises on DataCamp.|<ul><li>Introduction to R</li><li>Intermediate R</li><li>Swirl</li></ul>
|(4/2)</BR>[1](https://github.com/maherharb/MATE-T580/blob/master/Lectures/Lesson_01_Dataframe_Manipulation.md)|We'll learn how to manipulate data frames using the dplyr package. dplyr offers many advantages over equivalent functions in base R including performance, compactness of code, and readability of code.|<ul><li>Data Manipulation with dplyr</li></ul>
|(4/9)</BR>[2](https://github.com/maherharb/MATE-T580/blob/master/Lectures/Lesson_02_Data_Cleaning.md)|We'll continue building on the work done in the previous week. However, we'll start to pay more attention to the structure of the data and what it means to have 'tidy data'. We'll also discuss how to deal with missing values.|<ul><li>Cleaning Data in R</li></ul>
|(4/16)</BR>[3](https://github.com/maherharb/MATE-T580/blob/master/Lectures/Lesson_03_Web_Scraping.md)|We'll get introduced to the different R packages used to extract data from csv files, webpages, and text files. We'll also learn how to use regular expressions to parse text.|<ul><li>Importing data from flat files with utils</li><li>readr & data.table</li><li>Importing data from the web (Part 1)</li><li>Importing data from the web (Part 2)</li></ul>
|(4/23)</BR>[4](https://github.com/maherharb/MATE-T580/blob/master/Lectures/Lesson_04_Data_Visualization.md)|We'll learn about producing high quality and meaningful visualizations in R using the ggplot package. The focus will be on scatter plots, line plots, and bar plots.|<ul><li>Data Visualization with ggplot2 (Part 1)</li><li>Coordinates and Facets</li></ul>
|(4/30)</BR>[5](https://github.com/maherharb/MATE-T580/blob/master/Lectures/Lesson_05_Statistical_Inference_github.md)|We'll get introduced to important concepts in statistical learning including the bias-variance trade off, feature selection, regularization, and cross validation.|<ul><li>Correlation and Regression</li></ul>
|(5/7)</BR>[6](https://github.com/maherharb/MATE-T580/blob/master/Lectures/Lesson_06_Linear_Regression.md), [7](https://github.com/maherharb/MATE-T580/blob/master/Lectures/Lesson_07_Logistic_Regression.md)|	We'll focus on the linear and logistic regression as the two baseline methods used respectively in regression and classification problems.|<ul><li>Multiple Regression</li><li>Logistic Regression</li><li>Case study: Italian restaurants in NYC</li></ul>
|[8](https://github.com/maherharb/MATE-T580/blob/master/Lectures/Lesson_08_Decision_Trees_github.md)</BR>(5/14)|We'll focus on tree-based machine learning methods to solve classification and regression type problems. We'll learn how to train models using random forest and gbm (gradient boosting machine).|<ul><li>Machine Learning Toolbox</li></ul>
|[9](https://github.com/maherharb/MATE-T580/blob/master/Lectures/Lesson_09_Artificial_neural_networks.md)</BR>(5/21)|	We'll get introduced to another very popular machine learning algorithm: Artificial neural network (ann). We'll learn how to perform ann learning in R using the nnet package.|<ul><li>Machine Learning with Tree-Based Models in R</li></ul>
|10</BR>(5/28)|We'll get introduced to text mining and we’ll learn how to perform machine learning on unstructured data (text).| <ul><li>Text Mining: Bag of Words</li></ul>
|11</BR>(6/4)|	We'll conclude with a survey of advanced topics not discussed in this course, and with advice on how to continue your journey to become a data scientist.	|*No DataCamp assignment final week*

</div>

## Grading criteria

Students will be assessed according to the following scheme: 

Component | Share
--- | ---   
 DataCamp assignments	| 20% 
 In-class short quizzes |	20%
 Assignments | 	40%  
 Capstone project |	20%

## Getting started

Even before our first meeting, you have an opportunity to prepare for the course. Here's what you can do to get started:

1. [Install R](https://www.r-project.org/) on your computer
2. [Install RStudio](https://www.rstudio.com/) on your computer
3. Open RStudio and install the swirl package by typing through the console:
```
install.packages("swirl")
```
4. Load swirl by typing through the console:
```
library(swirl)
```
5. Begin your learning journey by typing through the console:
```
swirl()
```

## Resources

- [R for Data Science](http://r4ds.had.co.nz/) by Grolemund and Wickham

- [An Introduction to Statistical Learning with Applications in R](http://www-bcf.usc.edu/~gareth/ISL/) by James, Witten, Hastie, and Tibshirani

- [Text Mining with R](https://www.tidytextmining.com/) by Julia Silge and David Robinson

- [Tensorflow playground](https://playground.tensorflow.org): use this simulator to experiment with building and tuning a neural network to solve some prototype problems

## About the Instructor

I'm an [Assistant Professor of Physics](http://drexel.edu/materials/contact/faculty/harb/) at Drexel University. I have interest in Data Science, Machine Learning, and Text Mining, and prior consulting experience in these fields. I am also an avid competitor on Kaggle with the rank of Competitions Master. 

## Credit

The lessons of this course are for the most part original material that I developed specifically for the first offering of MATE-T580 at Drexel University. There is one notable exception: lesson 5 on Introduction to Statistical Learning borrows heavily from the book with same name by James, Witten, Hastie, and Tibshirani. 

The datasets used in the various demos and assignments were collected from different sources on the Internet and placed in a single folder for convenience to students. The datasets and scripts are used for sole educational purposes. 

Educators interested in obtaining the .Rmd files used to create the lessons should contact me with their request. 

## Footnotes

1. To avoid any confusion over the term "University", [here's what I believe a University is](https://www.uow.edu.au/~nillsen/The_Two_Universities.html) (based on the words of Robert M. Pirsig). 
