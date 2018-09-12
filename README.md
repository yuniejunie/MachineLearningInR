# MachineLearningInR
Reference: "Mastering Machine Learning with R", Cory Lesmeister

## Anscombe Dataset

We are going to look into Anscombe Dataset. This was made by Francis Anscombe to emphasize the importance of Outliers.

## The dataset contains 4 pairs of X and Y

We can load the data using the following codes.

```{r cars}
data("anscombe")
attach(anscombe)
anscombe
```

## Checking correlations of each of pairs

All 4 x,y pairs have correlations of 0.816.


```{}
cor(x1, y1)
cor(x2, y2)
cor(x3, y3)
cor(x4, y4)
```


## Plotting all 4 pairs

All 4 pairs have same correlations. However, every pair has different plotting shape.
It means we cannot solely depend on Correlations. Plot 1 is the closest to the linear relationship. Plot 2 is curved. Plot 3 has one outlier. Plot 4 shows that one outlier makes the correlation exist. If there was no outlier in Plot 4, there is no correlations between x4 and y4.


```{r anscombe, echo=TRUE}
par(mfrow = c(2,2)) # Drawing 2x2 Gridlines
plot(x1, y1, main = "Plot 1")
plot(x2, y2, main = "Plot 2")
plot(x3, y3, main = "Plot 3")
plot(x4, y4, main = "Plot 4")
```

```{r anscombe2, echo=FALSE}
par(mfrow = c(2,2)) # Drawing 2x2 Gridlines
plot(x1, y1, main = "Plot 1")
plot(x2, y2, main = "Plot 2")
plot(x3, y3, main = "Plot 3")
plot(x4, y4, main = "Plot 4")
```
