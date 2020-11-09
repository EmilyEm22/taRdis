#' backtract
#'
#' Subtracts a single given background fluorescence value from every fluorescence measurement in a dataset.
#' @param dataSet A matrix of containing 1 column of distance markers (column 1, "Distance") and multiple columns of fluorescence readings at various timepoints.
#' @param background Background fluorescence value to be subtracted from all datapoints in dataSet.
#' @param spatialPoints the number of distance markers included in dataSet (i.e. number of rows in dataSet).
#' @param timePoints the number of timepoints (i.e. number of columns after "Distance") included in dataSet.
#' @keywords subtract, normalize
#' @export
#' @examples 
#' Example <- backtract(taRdis_SampleData, background = 1, spatialPoints = 4, timePoints = 3)

backtract <- function(dataSet, background, spatialPoints, timePoints) {
  
  timePoints <- timePoints + 1
  
  for (i in 1:spatialPoints) {
    
    for (j in 2:timePoints){
      
      dataSet[i,j] <- dataSet[i,j] - background
      
    }
      
  }
  
  return(dataSet)
  
  View(dataSet)
  
}


