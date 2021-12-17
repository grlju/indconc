#' correspondence.
#'
#' @description
#' This code creates the concordance dataset containing mapping between ISIC 4, ISIC 3, ISIC 3.1, US SIC and UK SIC.
#' 
#' @section Note:
#' A few comments about Standard Industrial Classification
#' * NACE REV 1 is identical to ISIC REV 3.
#' * NACE REV 1.1 is identical to ISIC REV 3.1.
#' * NACE REV 2 is identical to ISIC REV 4.
#' * UK SIC 2007 is identical to NACE REV 2.
#'
#' @format A data.table with 177 rows and 9 variables:
#' \describe{
#'   \item{isic_4}{ISIC v4 code at the two digit level}
#'   \item{isic_3}{ISIC v3 code at the two digit level}
#'   \item{isic_3.1}{ISIC v3.1 code at the two digit level}
#'   \item{overlap btw isic3 & isic3_1}{proportion of the codes that overalp between isic_3 and isic_3.1 at the 4 digit level}
#'   \item{overlap btw isic3_1 & isic4}{proportion of the codes that overalp between isic_3.1 and isic_4 at the 4 digit level}
#'   \item{us_sic_2}{US SIC code at the two digit level}
#'   \item{overlap btw isic3 & ussic}{proportion of the codes that overalp between isic_3 and ussic at the 4 digit level}
#'   \item{sic2003}{UK SIC 2003 code at the two digit level}
#'   \item{overlap btw uksic2007 & uksic2003}{proportion of the codes that overalp between sic2003 and sic2007 at the 4 digit level}
#' }
#' @source \url{https://unstats.un.org/unsd/classifications/Econ/ISIC.cshtml}
#' @source \url{https://ec.europa.eu/eurostat/ramon/relations/index.cfm?TargetUrl=LST_REL&StrLanguageCode=EN&IntCurrentPage=11}
#' @source \url{https://unstats.un.org/unsd/classifications/Econ/ISIC.cshtml}
#'
"correspondence"