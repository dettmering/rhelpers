# Generates list with all combinations of values in columns of a data frame

generateList <- function(src, columns, rm.empty = TRUE) {
  df <- as.data.frame(table(src[,columns]))

  if (rm.empty == TRUE) {
    df <- subset(df, Freq > 0)
  }

  colnames(df)[1:(length(columns) + 1)] <- c(columns, 'n')
  df$row.no <- rownames(df)
  return (df)
}
