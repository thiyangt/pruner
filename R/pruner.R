#' prune big random forest models
#'
#' Reduce the size of the random forest models trained based on randomForest package
#' @param object pre-trained random forest
#' @return size reduced model
#' @export
prune_rf <- function(object){

  out <- list(call=object$call,
              type=object$type,
             importanceSD = object$importanceSD,
             classes = object$classes,
            ntree = object$ntree,
            mtry = object$mtry,
             forest = object$forest
           )
  class(out) <- "randomForest"
  return(out)

}
#'@example
#'s1 <- object.size(iris.rf)
#'prune_iris <- prune_rf(iris.rf)
#'print(s1, units = "auto")
#'s2 <- object.size(prune_iris)
#'print(s2, units = "auto")
#'predict(prune_iris, iris[1,1:4])
#'predict(iris.rf, iris[1,1:4])
