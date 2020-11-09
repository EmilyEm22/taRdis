#' "mid2": Plot Average Fluorescence vs Distance
#'
#' Generates a formatted scatter plot displaying Average Fluorescence vs Distance (pixels) with axis labels
#' @param ToGraph A matrix containing one column of spatial points (column 1, plotted on x axis) and one column of average fluorescence values (column 2, plotted on y axis). Output from taRdis function AverageJ is in the correct format to be plotted by mid2.
#' @keywords plot, scatter plot, graph
#' @export
#' @examples 
#' mid2(matrixToGraph)


mid2 <- function(ToGraph) {
  
#Column 1 (distance markers) on the x axis  
  xData <- ToGraph[ ,1]
#Column 2 (Average Fluorescence) on the y axis
  yData <- ToGraph[ ,2]
  
#Create a scatter plot of Average Fluorescence vs Distance (pixels), plotted with both points and lines in green with pre-set axis labels  
  mid2Plot <- matplot(xData, yData, type = 'c', xlab = "Distance (pixels)", ylab = "Average Fluorescence", col=3)
 
#Create the object mid2plot 
return(mid2Plot)
}