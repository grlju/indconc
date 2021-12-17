link_nace = function(eustats, correspondence, nace1_to_nace2){
  
  # create 2 digits code from nace
  eustats[, nace_1_2d := gsub("^[a-zA-z]+", "", nace)]
  # extract first 2 digits
  eustats[, nace_1_2d := str_sub(nace_1_2d, 1, 2)]
  
  # subset data according to nace revision number
  eu_nace_1 = eustats[year < 2008]
  eu_nace_2 = eustats[year >= 2008]
  
  eu_nace_1 = merge(eu_nace_1, nace1_to_nace2, by.x = "nace_1_2d", by.y = "nace_1_2", all.x = TRUE, allow.cartesian = TRUE)
  setcolorder(eu_nace_1, c("nace", "nace_1_2d", "nace_2_2", "overlap_pro"))
  setnames(eu_nace_1, "nace_2_2", "nace_rev2")
  setnames(eu_nace_1, "overlap_pro", "overlap btw nace1.1 and nace2")
  
  eu_nace_2[, "nace_rev2" := nace_1_2d]
  eu_nace_2[, "nace_1_2d" := NA]
  eu_nace_2[, "overlap btw nace1.1 and nace2" := NA]
  
  eu_final = rbind(eu_nace_1, eu_nace_2)
  
  eu_final = merge(eu_final, correspondence, by.x = "nace_rev2", by.y = "isic_4", all.x = TRUE, allow.cartesian = TRUE)
  eu_final[, "sic2007" := nace_rev2]
  eu_final[, "isic4" := nace_rev2]
  setcolorder(eu_final, c("nace", "nace_1_2d", "nace_rev2", "overlap btw nace1.1 and nace2", "isic4", "isic_3.1", "overlap btw isic3_1 & isic4", "isic_3", "overlap btw isic3 & isic3_1", "us_sic_2", "overlap btw isic3 & ussic", "sic2007", "sic2003", "overlap btw uksic2007 & uksic2003"))
  
  
  return(eu_final)
}