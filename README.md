# easyExp
When you analyze and visualize your experiments, are you always bored with creating nice, concise, and easy-to-understand visualizations? From assumption checking to effects visualizations, everything can be done in one line with easyExp, whether one-way, two-way, or three-way ANOVA!

# Installation
```
# install.packages("devtools")
devtools::install_github("HuandongChang/easyExp")
```

# Functions
**Checking ANOVA Assumptions**


1) equal variances within groups
```
# barplot
var_boxplot = function(dataset, response, x1, x2=NULL)

# scatterplot
var_scatterplot = function(dataset, response, x1, x2=NULL)

# interactive variance table
var_table = function(dataset, response, x1, x2=NULL, x3=NULL, type=1)
```


2) normally distributed residuals
```
# A qqplot and a histogram for residuals
normal_err = function(dataset, response, x1, x2=NULL, interaction = TRUE, bins = 30)

# or you can use residuals as input
normal_err = function(residuals, bins = 30)
```

3) independent and identically distributed observations
```
# Residual vs fit/order plots
iid = function(dataset, anova_model)
```

**Main Effect and Interaction Effect Plots**
```
# Main Effect Plots
main_plot = function(dataset, response, x1, x2, x3, ylim)

# Interaction Effect Plots
interaction_plot = function(dataset, response, x1, x2)
```


# Datasets Available in the Package
```
Bacteria
Cholesterol
Cups
MemoryA
Movies
Popcorn
Soda
Towels2
```


# Example

