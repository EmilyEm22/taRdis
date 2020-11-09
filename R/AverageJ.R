#' AverageJ
#'
#' Computes the **average fluorescence intensity** value across all time points for each distance marker.
#' @param CleanedData A matrix of containing 1 column of distance markers (column 1, "Distance") and multiple columns of fluorescence readings at various timepoints. Output from the taRdis function backtract is appropriate input for the function AverageJ.
#' @param spatialPoints the number of distance markers included in CleanedData (i.e. number of rows in CleanedData).
#' @param timePoints the number of timepoints (i.e. number of columns after "Distance") included in CleanedData.
#' @keywords average, mean
#' @export
#' @examples 
#' Example <- AverageJ(taRdis_SampleData, spatialPoints = 4, timePoints = 3)


AverageJ <- function(CleanedData, spatialPoints, timePoints) {

#Increase value of "timePoints" by 1 to account for presence of Distance in column 1 of CleanedData  
  timePoints <- timePoints + 1
  
#Create an empty matrix of 1 column to hold average fluorescence values 
  AvgFluo <- matrix(0, spatialPoints, 1)

#For each row (i.e. each distance marker) in CleanedData, average the fluorescence data points at all time points 
#Place average fluorescence values into empty AvgFluo matrix
    for (i in 1:spatialPoints) {
    AvgFluo[i, 1] <- rowMeans(CleanedData[i, 2:timePoints])
  }

#Create a single 2-column matrix with distance markers and average fluorescence values 
#i.e. join column 1 of CleanedData (distance markers) with AvgFluo matrix (column of average fluorescence)
mid2graph <- cbind(CleanedData[ , 1], AvgFluo)

colnames(mid2graph) <- c("Distance", "Average Fluorescence")

#Create the object mid2graph, a matrix with distance markers and average fluorescence ready to be graphed by function mid2
return(mid2graph)
  
}