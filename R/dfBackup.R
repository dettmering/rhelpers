#' Save csv backups of a list of dataframes
#'
#' @param df list of strings representing data frames to be backed up
#' @return 2014-11-19_dataframeA.csv, 2014-11-19_dataframeB.csv
#' @export
#' @examples
#' dfBackup(c('dataframeA', 'dataframeB'))

dfBackup <- function(df, subdir = "") {
	timestamp <- format(Sys.time(), "%Y-%m-%d")
	
	for (i in df) {
		write.csv(get(i), paste0(subdir, timestamp, '_', i, '.csv'), row.names = F)
	}
}
