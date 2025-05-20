library(sarp.snowprofile.alignment)

# SNOWPACK model outputs
modeled <- "source local SNOWPACK model output"

# Manual snow profile (reference)
manual <- "source local CAAML V6.0 file"

# Create a profile object from the CAAML V6.0 file
SPpairs$manual <- snowprofileCaaml(manual)

# Scan dates in the modeled file
Dates <- scanProfileDates(modeled)
print(Dates)

# Set date and time for SNOWPACK model to match reference profile date and time in UTC
ProfileDate <- Dates[enter date and time ID]
SPpairs$modeled <- snowprofilePro(modeled, ProfileDate = ProfileDate)
