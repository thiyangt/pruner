# pruner
Reduce size of the big trained machine learning models


You can install seer from github with:

```r
# install.packages("devtools")
devtools::install_github("thiyangt/pruner")
library(pruner)
```

## Usage

```r
set.seed(71)
data(iris)
iris.rf <- randomForest(Species ~ ., data=iris, importance=TRUE,proximity=TRUE)
s1 <- object.size(iris.rf)
prune_iris <- prune_rf(iris.rf)
print(s1, units = "auto")
s2 <- object.size(prune_iris)
print(s2, units = "auto")

```
