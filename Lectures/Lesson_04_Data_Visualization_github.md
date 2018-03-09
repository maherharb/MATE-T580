Practical Data Science using R</BR>Lesson 4: Visualizing Data with `ggplot`
================
Maher Harb, PhD</BR>
Assistant Professor of Physics</BR>Drexel University

About the lesson
----------------

-   Visualizing data is the core activity of the exploratory analysis phase

-   In this lesson, we learn how to produce plots using the `ggplot2` package

-   The focus of the lesson is on scatterplots, barplots, boxplots, and histograms

-   We'll also learn how to improve the readability of the plot by using facets

Plotting with Base R
--------------------

Base R has basic plotting functions that suffice for basic tasks

Example, generating scatterplots with `plot` is straight forward:

``` r
data(mtcars)
par(mar=c(4,4,0,0))
plot(mtcars$wt, mtcars$mpg, xlab="Weight", ylab="mpg")
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-1-1.png)

Plotting with Base R
--------------------

So is generating barplots with `barplot`:

``` r
par(mar=c(4,4,4,0))
barplot(table(mtcars$cyl), xlab="Cylinders", ylab="Count")
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-2-1.png)

Plotting with Base R
--------------------

Histograms with `hist`:

``` r
par(mar=c(4,4,4,0))
hist(mtcars$wt, xlab="Weight", main="Histogram of car weights")
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-3-1.png)

Plotting with Base R
--------------------

And boxplots with `boxplot`:

``` r
par(mar=c(4,4,0,0))
boxplot(mtcars$mpg~mtcars$cyl, xlab="Cylinders", ylab="mpg")
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-4-1.png)

Motivation for using `ggplot`
-----------------------------

-   Nicer looking plots (publication quality)

-   Uses a layered approach to plotting (easy to add elements to existing plots)

-   Allows showing multiple plots through faceting

-   Integrates statistical analysis within the same package

-   Works with `tidy` data

-   Is an implementation of **The Grammar of Graphics** (a well founded approach to plotting data in quantitative fields)

The Grammar of Graphics
-----------------------

There are seven elements to a plot:

-   **Data**: The dataset being plotted

-   **Aesthetics**: The scale onto which we map the data

-   **Geometries**: The visual elements used for the data

-   **Statistics**: The data analysis performed on the plotted data

-   **Coordinates**: The dimensions of the plot

-   **Facets**: The splitting of a single plot into multiple plots

-   **Themes**: Visual elements that are not part of the data

Scatterplots with `ggplot`
--------------------------

The `ggplot` function deals with the data and aesthetics elements:

``` r
library(ggplot2)
ggplot(data = mtcars, aes(x = wt, y = mpg))
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-5-1.png)

The plot is empty! We need to define the geometrical element

Scatterplots with `ggplot`
--------------------------

We specify a scatterplot by the `geom_point` function:

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point()
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-6-1.png)

Scatterplots with `ggplot`
--------------------------

We could've made this a line plot instead by using the `geom_line` function:

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_line()
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-7-1.png)

But that doesn't make sense for the plotted data

Scatterplots with `ggplot`
--------------------------

We control the properties of the data points within `geom_point`:

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point(size = 2, col = "blue", alpha = 0.6)
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-8-1.png)

Scatterplots with `ggplot`
--------------------------

We can add other dimensions to the plot within `aes`:

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point(size = 2, alpha = 0.6)
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-9-1.png)

The number of cylinders are mapped to the color

Scatterplots with `ggplot`
--------------------------

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg, 
    col = factor(cyl), shape = factor(am))) + 
    geom_point(size = 2, alpha = 0.6)
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-10-1.png)

And the transmission type is mapped to the shape

Now is your turn to practice!
-----------------------------

The iris dataset is a record of petal and sepal dimensions for three different species of the iris flower. The dataset can be loaded in R by calling:

``` r
data(iris)
```

Use `ggplot` to generate a scatterplot of petal width vs. petal length with the color of the data point indicating the iris species.

Iris Petal Length and Width
---------------------------

Here's a possible solution to the previous exercise:

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-12-1.png)

Faceted plots with `ggplot`
---------------------------

Faceted plots is a way to split a 'busy' looking plot into multiple plots for better readability

This is done with `facet_wrap`:

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg, col = factor(cyl)) ) +
  geom_point(size = 2, alpha = 0.6) +
  facet_wrap(~am)
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-13-1.png)

Faceted plots with `ggplot`
---------------------------

`facet_grid` allows faceting by two variables:

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point(size = 2, alpha = 0.6) +
  facet_grid(am~cyl)
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-14-1.png)

Now is your turn to practice!
-----------------------------

Extending on the analysis done on the iris dataset, generate a facet plot that shows sepal and petal dimensions in two separate plots. Each of the two plots is a scatterplot of width vs. length, with the color of the data point indicating the iris species.

Hint: The `iris` dataset as loaded directly in R is not in the proper format to do the required analysis. For your convenience, I created this alternative `tidy` version:

`https://raw.githubusercontent.com/mharb75/MATE-T580/master/Datasets/iris_alt.csv`

Iris Petal Length and Width
---------------------------

Let's take a look at the iris dataset:

``` r
head(iris)
```

    ##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
    ## 1          5.1         3.5          1.4         0.2  setosa
    ## 2          4.9         3.0          1.4         0.2  setosa
    ## 3          4.7         3.2          1.3         0.2  setosa
    ## 4          4.6         3.1          1.5         0.2  setosa
    ## 5          5.0         3.6          1.4         0.2  setosa
    ## 6          5.4         3.9          1.7         0.4  setosa

Sepal and Petal dimensions need not be in separate columns. We need to do some work with `gather` and `spread`

Iris Petal Length and Width
---------------------------

First, we combine all variables:

``` r
library(dplyr)
library(tidyr)
iris2 <- iris %>% 
  mutate(Id = 1:n()) %>%
  gather(Measure, Value, Sepal.Length:Petal.Width) 
head(iris2)
```

    ##   Species Id      Measure Value
    ## 1  setosa  1 Sepal.Length   5.1
    ## 2  setosa  2 Sepal.Length   4.9
    ## 3  setosa  3 Sepal.Length   4.7
    ## 4  setosa  4 Sepal.Length   4.6
    ## 5  setosa  5 Sepal.Length   5.0
    ## 6  setosa  6 Sepal.Length   5.4

Iris Petal Length and Width
---------------------------

Then we separate the Part (Sepal vs. Petal) from the Dimension (Length vs. Width):

``` r
iris3 <- separate(iris2, Measure, c("Part", "Dimension"), "[.]") 
head(iris3)
```

    ##   Species Id  Part Dimension Value
    ## 1  setosa  1 Sepal    Length   5.1
    ## 2  setosa  2 Sepal    Length   4.9
    ## 3  setosa  3 Sepal    Length   4.7
    ## 4  setosa  4 Sepal    Length   4.6
    ## 5  setosa  5 Sepal    Length   5.0
    ## 6  setosa  6 Sepal    Length   5.4

Iris Petal Length and Width
---------------------------

And finally, we spread the Dimension into separate Width and Length columns:

``` r
iris4 <- spread(iris3, Dimension, Value)
head(iris4)
```

    ##   Species Id  Part Length Width
    ## 1  setosa  1 Petal    1.4   0.2
    ## 2  setosa  1 Sepal    5.1   3.5
    ## 3  setosa  2 Petal    1.4   0.2
    ## 4  setosa  2 Sepal    4.9   3.0
    ## 5  setosa  3 Petal    1.3   0.2
    ## 6  setosa  3 Sepal    4.7   3.2

Iris Petal Length and Width
---------------------------

Here's a possible solution to the previous exercise:

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-19-1.png)

Iris Petal Length and Width
---------------------------

Here's another way to visualize the data:

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-20-1.png)

Adding statistical elements to plots
------------------------------------

In `ggplot`, statistical analysis is treated like a separate element that can be added to plots:

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point(size = 2, alpha = 0.6) +
  stat_smooth(method="lm")
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-21-1.png)

Adding statistical elements to plots
------------------------------------

In `ggplot`, statistical analysis is treated like a separate element that can be added to plots:

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point(size = 2, alpha = 0.6) +
  stat_smooth(aes(group = 1), method="lm", se=FALSE)
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-22-1.png)

Flash-forward
-------------

In lesson 6, we learn how the line of best fit is generated

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-23-1.png)

Adding statistical elements to plots
------------------------------------

We can also add trend lines with `stat_smooth`:

``` r
ggplot(data = mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point(size = 2, alpha = 0.6) +
  stat_smooth(aes(group = 1), se=FALSE, lwd=0.5, col="gray")
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-24-1.png)

Barplots with `ggplot`
----------------------

The very basic purpose of a barplot is to count:

``` r
ggplot(data = mtcars, aes(x = factor(cyl))) +
  geom_bar()
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-25-1.png)

Notice that cylinder is a categorical variable

Histograms with `ggplot`
------------------------

If the *x* variable is numeric, we use `geom_histogram` instead:

``` r
ggplot(data = mtcars, aes(x = wt)) +
  geom_histogram(bins=10)
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-26-1.png)

Boxplots with `ggplot`
----------------------

Displaying statistics of a numerical variable against a categorical variable is done with `geom_boxplot`:

``` r
ggplot(data = mtcars, aes(x = factor(cyl), y=mpg)) +
  geom_boxplot()
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-27-1.png)

Barplots with `ggplot`
----------------------

We can use `geom_bar` for multivariate plots:

``` r
ggplot(data = mtcars, aes(x = factor(cyl), fill=factor(am))) +
  geom_bar(position="fill")
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-28-1.png)

Barplots with `ggplot`
----------------------

An alternative way to display the same data:

``` r
ggplot(data = mtcars, aes(x = factor(cyl), fill=factor(am))) +
  geom_bar(position = "dodge")
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-29-1.png)

Barplots with `ggplot`
----------------------

An alternative way to display the same data:

``` r
ggplot(data = mtcars, aes(x = factor(cyl), fill=factor(am))) +
  geom_bar(position = "stack")
```

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-30-1.png)

Now is your turn to practice!
-----------------------------

Here's a barplot showing survival rates for the titanic passengers, by class and gender:

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-31-1.png)

Your task is to reproduce the same plot. Link to the titanic dataset:

`https://raw.githubusercontent.com/mharb75/MATE-T580/master/Datasets/titanic_train.csv`

Now is your turn to practice!
-----------------------------

Here's the code that generated the previous plot:

Now is your turn to practice!
-----------------------------

Using the same titanic data, make a plot with `ggplot` that explores the relationship between survival, age, and gender. This's an open ended exercise, you may generate any type of plot you wish as long as it effectively communicates the relationship of interest.

Titanic survival rates
----------------------

![](Lesson_04_Data_Visualization_github_files/figure-markdown_github/unnamed-chunk-33-1.png)

Concluding remarks
------------------

-   Visualizing your data is important for a multitude of reasons

-   It allows you to explore the data and generate insights to help you proceed with later stages of the analysis (e.g. building a predictive model)

-   Sometimes, data visualization is a goal on its own, as the case with producing plots for manuscripts or reports

-   `ggplot` is a great package to use for data visualizing and it offers a lot more than what was covered in this lesson

-   With `ggplot` you can generate publication quality plots for a large variety of geometries (over 30 geoms)
