# SNOWPACK-Validation
Repository for a golden dataset of CAAML V6.0 files, standards of practice, and use cases for *Validation and improvements to a numerical snow cover avalanche tool, SNOWPACK*. CAAML V6.0 files are manually submitted snow profiles taken at the Atwater Study Plot in Alta, UT. The study plot is located on flat terrain at an elevation of 8752 feet (Lat/Lon: 40.59148, -111.63778), and is maintained by the U.S. Department of Agriculture. The study plot measures snow water equivalent (SWE), precipitation accumulation, air temperature, snow depth, soil moisture percent, soil temperature, salinity, and real dielectric constant. Instruments used to measure these variables include:
- Pressure Transducer - 100" Druck
- Air Temp - Apogee St300
- Snow Depth - Campbell Snowvue
- Soil Moist/temp - Stevens Hydraprobe Analog

Variables included in a golden standard CAAML V6.0 manually submitted snow profile include:
- Latitude and longitude
- Elevation
- Aspect
- Date and time
- Slope angle
- Height of snow
- Temperature profile
- Full-depth layer identification complete with layer hardness, grain identification, and grain size. Each layer must only contain a single hardness classification.

Examples of golden standard CAAML V6.0 files can be downloaded from the following links:
- [January 17, 2025, submitted by Jacob Miller](https://snowpilot.org/node/70204)
- [January 14, 2025, submitted by Dave Kelly](https://snowpilot.org/node/69903)
- [December 23, 2024, submitted by Dave Kelly](https://snowpilot.org/node/68319)

# Use Cases
### January 14, 2025 (19:00 UTC)
Observer: Dave Kelly

Recent Weather: A winter storm moved into the region on January 10, 2025, dropping 1.4” SWE (14” snow) at the Atwater SP before exiting the area on January 12. Temperatures dropped steadily throughout the storm, reaching 0℉ on the morning of January 13. This was followed by two days of persistent cold weather, with temperatures remaining below 14℉. Moderate to strong northwest winds accompanied the storm's arrival (25 mph, gusts to 40 mph) before gradually decreasing as the system moved out. By the morning of January 14, northwest winds were blowing at 15 mph with gusts up to 25 mph.

Validation Scores:
- Weak Layers: NaN
- Crusts: 0.70
- Precipitation Particles: 0.86
- Bulk: 0.55
- Simple Score: 0.702

**Cost Density Matrix**
![Jan142025_CostDensityMatrix](https://github.com/user-attachments/assets/69d38bd8-01f5-45e5-991c-f78d217222f5)

**Alignment Plot (top-down alignment method)**
![Jan142025_AlignmentPlot](https://github.com/user-attachments/assets/afac7a1e-0204-48b7-8458-154acd155119)
