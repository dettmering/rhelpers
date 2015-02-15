#' Aggregate Columns of a data frame
#' 
#' @param df source data frame
#' @param colums.of.interest list of columns to aggregate
#' @export
#' @param group.by columns to group by

aggregateColumns <- function(df, colums.of.interest, group.by) {  
  result <- generateList(df, group.by)

  for (i in 1:length(result[, group.by])) {
    result.subset <- subset(df, get(group.by) == result[i, group.by])
    
    for (j in colums.of.interest) {
      result[i, paste0(j, '.Sum')] <- sum(result.subset[, j])
      result[i, paste0(j, '.Median')] <- median(result.subset[, j])
      result[i, paste0(j, '.Mean')] <- mean(result.subset[, j])
      result[i, paste0(j, '.SD')] <- sd(result.subset[, j])
    }
  }
  return(result)
}