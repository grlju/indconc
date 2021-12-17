#' correspondence_data
#' 
#' Creates the correspondence table
#'
#' This code creates the concordance dataset containing mapping between ISIC 4, ISIC 3, ISIC 3.1, US SIC and UK SIC.
#' The input dataset can also be directly accessed in the /data folder. 
#'
#' A few comments about Standard Industrial Classification
#' 
#' NACE REV 1 is identical to ISIC REV 3
#' NACE REV 1.1 is identical to ISIC REV 3.1
#' NACE REV 2 is identical to ISIC REV 4
#' UK SIC 2007 is identical to NACE REV 2
#'
"correspondence_data"

require(data.table)

# SIC2003 to SIC2007
load("data/uksic2003_uksic2007conc.RData")

# NACE1.1 to NACE2
load("data/nace_2_nace_11conc.RData")

# ussic2/isic3_2/nace1_2
load("data/ussic_isic3conc.RData")

# ISIC
# ISIC3 to ISIC3.1
load("data/isic3_isic31conc.RData")

# ISIC3.1 to ISIC4
load("data/isic31_isic4conc.RData")


##################### ISIC3 <-> ISIC3.1 <-> ISIC4 #######################################
isic = merge(isic3_isic31conc, isic31_isic4conc, by.x = "isic_31_2", by.y = "isic_3_2", all.x = TRUE, all.y = TRUE)
setcolorder(isic, neworder = c("isic_3_2", "isic_31_2", "overlap btw isic3 & isic3_1", "isic_4_2", "overlap btw isic3_1 & isic4"))

##################### Attach USSIC to ISIC ############################################
isic = merge(isic, ussic_isic3conc, by.x = "isic_3_2", by.y = "isic_3_2", all.x = TRUE, all.y = TRUE)

# rename isic
setnames(isic, c("isic_3_2", "isic_31_2", "isic_4_2"), c("isic_3", "isic_3.1", "isic_4"))

#################### Link UK SIC 2007 and UK SIC 2003 to the correspondence table above
uksic2003_uksic2007conc[, c("sic2007", "sic2003") := lapply(.SD, as.character), .SDcols = c("sic2007", "sic2003")]
correspondence = merge(isic, uksic2003_uksic2007conc, by.x = "isic_4", by.y = "sic2007", all.x = TRUE, all.y = TRUE)
setnames(correspondence, "count", "overlap btw uksic2007 & uksic2003")

usethis::use_data(correspondence, overwrite = TRUE)
