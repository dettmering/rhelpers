# Function for saving csv backups of a list of dataframes
# usage: dfBackup(c('dataframeA', 'dataframeB'))
# Output: 2014-11-19_dataframeA.csv, 2014-11-19_dataframeB.csv
# Till Dettmering, 2014

dfBackup <- function(df, subdir = "") {
	timestamp <- format(Sys.time(), "%Y-%m-%d")
	
	for (i in df) {
		write.csv(get(i), paste0(subdir, timestamp, '_', i, '.csv'), row.names = F)
	}
}
