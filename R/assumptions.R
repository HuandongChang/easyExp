#' A box plot to check the equal variances assumption in ANOVA
#'
#' This function gives a box plots to check the within groups equal variances assumptions.
#' The first factor x1 is the x-axis, and f the second factor x2 exists,
#' the box plot will be colored by x2.
#' @param dataset the dataset that contains the experiment information
#' @param response the value of interest
#' @param x1 the first factor
#' @param x2 the second factor
#' @return a box plot
#' @importFrom ggplot2 ggplot aes geom_boxplot theme element_text
#' @export
var_boxplot = function(dataset, response, x1, x2=NULL){
  ggplot(data = dataset, aes(x = {{x1}}, y = {{response}})) +
    geom_boxplot() +
    aes(colour = {{x2}}) +
    theme(axis.title=element_text(size=14,face="bold"), axis.text.x = element_text(size = 12, angle = 45))
}
