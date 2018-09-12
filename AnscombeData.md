Anscombe Data
================

Purpose of this analysis
------------------------

We are going to look into Anscombe Dataset. This was made by Francis Anscombe to emphasize the importance of Outliers.

The dataset contains 4 pairs of X and Y
---------------------------------------

We can load the data using the following codes.

``` r
data("anscombe")
attach(anscombe)
anscombe
```

    ##    x1 x2 x3 x4    y1   y2    y3    y4
    ## 1  10 10 10  8  8.04 9.14  7.46  6.58
    ## 2   8  8  8  8  6.95 8.14  6.77  5.76
    ## 3  13 13 13  8  7.58 8.74 12.74  7.71
    ## 4   9  9  9  8  8.81 8.77  7.11  8.84
    ## 5  11 11 11  8  8.33 9.26  7.81  8.47
    ## 6  14 14 14  8  9.96 8.10  8.84  7.04
    ## 7   6  6  6  8  7.24 6.13  6.08  5.25
    ## 8   4  4  4 19  4.26 3.10  5.39 12.50
    ## 9  12 12 12  8 10.84 9.13  8.15  5.56
    ## 10  7  7  7  8  4.82 7.26  6.42  7.91
    ## 11  5  5  5  8  5.68 4.74  5.73  6.89

Checking correlations of each of pairs
--------------------------------------

All 4 x,y pairs have correlations of 0.816.

    cor(x1, y1)
    cor(x2, y2)
    cor(x3, y3)
    cor(x4, y4)

Plotting all 4 pairs
--------------------

All 4 pairs have same correlations. However, every pair has different plotting shape. It means we cannot solely depend on Correlations.
Plot 1 is the closest to the linear relationship. Plot 2 is curved. Plot 3 has one outlier. Plot 4 shows that one outlier makes the correlation exist. If there was no outlier in Plot 4, there is no correlations between x4 and y4. 

``` r
par(mfrow = c(2,2)) # Drawing 2x2 Gridlines
plot(x1, y1, main = "Plot 1")
plot(x2, y2, main = "Plot 2")
plot(x3, y3, main = "Plot 3")
plot(x4, y4, main = "Plot 4")
```

![](AnscombeData_files/figure-markdown_github/pressure-1.png)
