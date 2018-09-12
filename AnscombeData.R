# Reference : "Mastering Machine Learning with R", Cory Lesmeister


# Looking into Anscombe Dataset
# This was made to emphasize the importance of Outliers

# This contains 4 pairs of X and Y
data("anscombe")
attach(anscombe)
anscombe


# Checking correlations for each pairs
# Both x,y pairs have correlations of 0.816
cor(x1, y1)
cor(x2, y2)
cor(x3, y3)
cor(x4, y4)


# Plotting all 4 pairs
par(mfrow = c(2,2)) # Drawing 2x2 Gridlines
plot(x1, y1, main = "Plot 1")
plot(x2, y2, main = "Plot 2")
plot(x3, y3, main = "Plot 3")
plot(x4, y4, main = "Plot 4")


# Checking each plots, every pair has different plotting shape (They all have same correlation)
# It means we cannot solely depend on Correlations



