#' uksic2003_uksic2007conc.
#'
#' A dataset containing mapping of UK SIC 2003 to UK SIC 2007 with and indication of the proportion of the codes that overlap
#' between the two digit code at lower levels of aggregation.
#'
#' @format A data.table with 85 rows and 3 variables:
#' \describe{
#'   \item{sic2007}{UK SIC 2007 code at the two digit level}
#'   \item{sic2003}{UK SIC 2003 code at the two digit level}
#'   \item{count}{proportion of the codes that overalp between nace_2_2 and nace_1_2 at the 4 digit level}
#' }
#' @source \url{https://www.ons.gov.uk/methodology/classificationsandstandards/ukstandardindustrialclassificationofeconomicactivities/uksic2007}
"uksic2003_uksic2007conc"