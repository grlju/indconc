#' isic31_isic4conc
#'
#' A dataset containing mapping of ISIC v3.1 to ISIC v4 with and indication of the proportion of the codes that overlap
#' between the two digit code at lower levels of aggregation.
#'
#' @format A data.table with 93 rows and 3 variables:
#' \describe{
#'   \item{isic_3_2}{ISIC v3.1 code at the two digit level}
#'   \item{isic_4_2}{ISIC v4 code at the two digit level}
#'   \item{overlap btw isic3_1 & isic4}{proportion of the codes that overalp between isic_3_2 and isic_4_2 at the 4 digit level}
#' }
#' @source \url{https://unstats.un.org/unsd/classifications/Econ/ISIC.cshtml}
"isic31_isic4conc"