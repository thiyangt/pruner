#' prune big random forest models
#'
#' Reduce the size of the random forest models trained based on randomForest package
#' @param object pre-trained random forest
#' @param rmntreemtry if TRUE number of call, ntree and mtry will also be removed
#' @return size reduced model
#' @export
prune_rf <- function(object, rmntreemtry=FALSE){

  if (rmntreemtry==TRUE){
    out <- list(#call=object$call,
      type=object$type,
      importanceSD = object$importanceSD,
      classes = object$classes,
      #ntree = object$ntree,
      # mtry = object$mtry,
      forest = object$forest
    )
  }else{
      out <- list(#call=object$call,
             type=object$type,
             importanceSD = object$importanceSD,
             classes = object$classes,
            #ntree = object$ntree,
           # mtry = object$mtry,
             forest = object$forest
           )
  }

  class(out) <- "randomForest"
  return(out)

}
#'@example
#'set.seed(71)
#'data(iris)
#'iris.rf <- randomForest(Species ~ ., data=iris, importance=TRUE,proximity=TRUE)
#'s1 <- object.size(iris.rf)
#'prune_iris <- prune_rf(iris.rf)
#'print(s1, units = "auto")
#'s2 <- object.size(prune_iris)
#'print(s2, units = "auto")
#'predict(prune_iris, iris[1,1:4])
#'predict(iris.rf, iris[1,1:4])
