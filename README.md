Overview

This guide demonstrates how to visualize the mtcars dataset using ggplot2 in R. You can create scatter plots, customize point appearance, add regression or LOESS smoothing lines, and handle multiple groups with categorical variables.

First, load the dataset using data(mtcars). A basic scatter plot can be made using either base R plot() or ggplot() with geom_point(). Points can be customized by size, shape, color, and fill.

Regression lines can be added using **geom_smooth(method = "lm")** for linear models, and **LOESS smoothing** using geom_smooth(method = "loess") produces a curve that follows neighboring points. Confidence intervals can be removed with se = FALSE.

To handle multiple groups, convert numeric variables to factors using **as.factor()**. You can map a factor to color, shape, or line type, and manually set line types using **scale_linetype_manual()**. This allows **easy comparison** of groups in scatter plots and regression lines.

Key functions include geom_point() for **points**, geom_smooth() for **regression or smooth lines**, and factor conversion for categorical grouping. Customizing colors, shapes, and line types helps distinguish groups clearly.

