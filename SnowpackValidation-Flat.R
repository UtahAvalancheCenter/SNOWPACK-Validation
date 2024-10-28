## Snowpack Validation - Flat Field Simulation

library(sarp.snowprofile.alignment)

#SP model outputs
#new
#modeled <- "C:/Users/mckin/Desktop/UAC/Projects/SNOWPACK/Simulations/SP_MO_HOLTSLAG/FLAT_ATH20_10_05_2023_06_11_2024.pro"

#old
#modeled <- "C:/Users/mckin/Desktop/UAC/Projects/SNOWPACK/Simulations/10_05_2023/ATH20_10_05_2023_05_15_2024.pro"

########################################################

## CHANGE PIT##
# Manual pit data from Snowpilot
#manual <- "C:/Users/mckin/Desktop/UAC/Projects/SNOWPACK/GoogleDrive-Snowpits/Atwater 3_19_24-19-Mar.caaml"

#Create a profile object from the caaml v6 file
SPpairs$manual <- snowprofileCaaml(manual)

## CHANGE DATE ##
## Scan dates in modeled file
Dates <- scanProfileDates(modeled)
options(max.print = 5000)
print(Dates)

ProfileDate <- Dates[4002] #Set date and time for SP

SPpairs$modeled <- snowprofilePro(modeled, ProfileDate = ProfileDate)

dtwAlignment <- dtwSP(SPpairs$modeled, SPpairs$manual, open.end = TRUE)

## Inspect local cost:
#png(file="C:/Users/mckin/Desktop/UAC/Projects/SNOWPACK/Simulations/Results/CostDensity/OLD_Atwater 3_19_24-19-Mar.png",width=600, height=600)
plotCostDensitySP(dtwAlignment)
#dev.off()

dtwAlignment$sim <- simSP(dtwAlignment$reference, dtwAlignment$queryWarped, verbose = TRUE, type = "HerlaEtAl2021")

## CHANGE NAME
# Plot alignment:
#png(file="C:/Users/mckin/Desktop/UAC/Projects/SNOWPACK/Simulations/Results/Alignment/OLD_Atwater 3_19_24-19-Mar.png",width=600, height=350)
plotSPalignment(dtwAlignment = dtwAlignment)
#dev.off()