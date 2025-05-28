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

Examples of golden standard CAAML V6.0 files can be found in the folder **CAAMLv6-Files**

### Validation Standards of Practice
*See DTW-Atwater-Validation-Code.R for code*

To validate SNOWPACK with manually referenced snow profiles, we utilize the R package "sarp.snowprofile.alignment" created by Herla, Haegeli, Horton, and Billecocq. This package aligns snow profiles by matching their individual layers based on Dynamic Time Warping (DTW). To run a validation, one must first isolate the SNOWPACK PRO file to the date and time of the reference snowprofile. Once the correct date and time have been set, dynamic time warping can be performed using the dtwSP tool. This tool has many input arguments that can be modified. Here we suggest inputs for reference snow profiles taken directly at the study plot used to run SNOWPACK. First, we recommend not rescaling the query snow height to match the reference snow height (rescale2refHS = FALSE). Additionally, we recommend checking if a global alignment performs better than an open-end alignment (checkGlobalAlignment = TRUE). Finally, we suggest using the simType Herla et al. 2021. If validating SNOWPACK with a reference snow profile taken outside of the study plot, we recommend rescaling the query snow height to match the reference snow height (rescale2refHS = TRUE). For more information on the sarp.snowprofile.alignment tool, see [Herla, Horton, Mair, Haegeli (2021)](https://gmd.copernicus.org/articles/14/239/2021/gmd-14-239-2021.pdf).

# Use Cases
### January 17, 2025 (17:31 UTC)
**Observer:** Jacob Miller

**Recent Weather:** A cold winter storm moved into the region on January 10, dropping 14" of snow (1.4" SWE) at the Atwater SP by the morning of January 12. As the storm moved out of the region, temperatures plummeted to near 0 degrees Fahrenheit before warming back to seasonal averages on January 16, and northwest winds remained light through this duration. On the morning of January 17, temperatures were in the mid-20s Fahrenheit, winds were steady at 10 mph from the west-northwest (gusting to 25 mph), and no new snow had fallen since January 12.

**Validation Scores:**
- Weak Layers: NaN, w
- Crusts: 0.0
- Precipitation Particles: 0.68
- Bulk: 0.59
- Simple Score: 0.424

**Cost Density Matrix - January 17, 2025**
![Jan172025_CostDensityMatrix](https://github.com/user-attachments/assets/cc658e12-3a49-46da-8139-b394efd6b24a)

**Alignment Plot (global alignment) - January 17, 2025**
![Jan172025_AlignmentPlot](https://github.com/user-attachments/assets/c87d24cd-5ec3-4ed9-914c-9d9da7dfe172)

---

### January 14, 2025 (19:00 UTC)
**Observer:** Dave Kelly

**Recent Weather:** A winter storm moved into the region on January 10, 2025, dropping 1.4” SWE (14” snow) at the Atwater SP before exiting the area on January 12. Temperatures dropped steadily throughout the storm, reaching 0℉ on the morning of January 13. This was followed by two days of persistent cold weather, with temperatures remaining below 14℉. Moderate to strong northwest winds accompanied the storm's arrival (25 mph, gusts to 40 mph) before gradually decreasing as the system moved out. By the morning of January 14, northwest winds were blowing at 15 mph with gusts up to 25 mph.

**Validation Scores:**
- Weak Layers: NaN
- Crusts: 0.70
- Precipitation Particles: 0.86
- Bulk: 0.55
- Simple Score: 0.702

**Cost Density Matrix - January 14, 2025**
![Jan142025_CostDensityMatrix](https://github.com/user-attachments/assets/69d38bd8-01f5-45e5-991c-f78d217222f5)

**Alignment Plot (top-down alignment method) - January 14, 2025**
![Jan142025_AlignmentPlot](https://github.com/user-attachments/assets/afac7a1e-0204-48b7-8458-154acd155119)

---

### December 23, 2024 (21:40 UTC)
**Observer:** Dave Kelly

**Recent Weather:** After ten days of no precipitation and above freezing daytime highs, 1" of snow (0.1" SWE) finally fell at Alta, UT, on the morning of December 23, 2024. Winds from the previous five days were calm from the west-northwest and were blowing below 10 mph on the morning of December 23. Unseasonably warm temperatures entered the region on December 17, with daytime highs in the mid to upper 30s Fahrenheit and lows in the mid to upper 20s. The temperature at the Atwater SP on the morning of December 23 was 29 degrees Fahrenheit.

**Validation Scores:**
- Weak Layers: NaN
- Custs: 0.63
- Precipitation Particles: 0.20
- Bulk: 0.49
- Simple Score: 0.44

**Cost Density Matrix - December 23, 2024**
![Dec232024_CostDensityMatrix](https://github.com/user-attachments/assets/47f471aa-e80f-4fa4-9526-10a8902517ee)

**Alignment Plot (global alignment) - December 23, 2024**
![Dec232024_AlignmentPlot](https://github.com/user-attachments/assets/961b77cb-6efc-4156-8ba9-8f41e7091c1f)
