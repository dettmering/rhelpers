#' Generates list with all combinations of values in columns of a data frame
#' @param src source data frame
#' @export
#' @param columns list of columns of interest
#' @param rm.empty remove empty combinations. If this is set to FALSE, all possible combinations of all columns of interest will be returned.
#' @param row.no generate an extra column with the row name

generateList <- function(src, columns, rm.empty = TRUE, row.no = FALSE) {
  df <- as.data.frame(table(src[,columns]))

  if (rm.empty == TRUE) df <- subset(df, Freq > 0)
  
  colnames(df)[1:(length(columns) + 1)] <- c(columns, 'n')
  
  if (row.no == TRUE) df$row.no <- rownames(df)
  
  return (df)
}
