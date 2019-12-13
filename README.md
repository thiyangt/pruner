pruner
======

Reduces the size of a pre-trained machine learning models

You can install seer from github with:

``` r
# install.packages("devtools")
#devtools::install_github("thiyangt/pruner")
library(pruner)
```

Usage
-----

``` r
set.seed(71)
data(iris)
iris.rf <- randomForest::randomForest(Species ~ ., data=iris, importance=TRUE,proximity=TRUE)
s1 <- object.size(iris.rf)
print(s1, units = "auto")
#> 690.9 Kb

prune_iris <- prune_rf(iris.rf)
s2 <- object.size(prune_iris)
print(s2, units = "auto")
#> 433.4 Kb
```
