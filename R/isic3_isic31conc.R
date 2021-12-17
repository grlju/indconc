#' isic3_isic31conc.
#'
#' A dataset containing mapping of ISIC v3 to ISIC v3.1 with and indication of the proportion of the codes that overlap
#' between the two digit code at lower levels of aggregation.
#'
#' @format A data.table with 61 rows and 3 variables:
#' \describe{
#'   \item{isic_3_2}{ISIC v3 code at the two digit level}
#'   \item{isic_31_2}{ISIC v3.1 code at the two digit level}
#'   \item{overlap btw isic3 & isic3_1}{proportion of the codes that overalp between isic_3_2 and isic_31_2 at the 4 digit level}
#' }
#' @source \url{https://unstats.un.org/unsd/classifications/Econ/ISIC.cshtml}
"isic3_isic31conc"