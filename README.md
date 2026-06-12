# Global-anemia-prevalence-analysis.
Analysis of global anaemia prevalence among women of reproductive age using WHO public health datasets in R. This project includes data cleaning, exploratory data analysis, statistical testing, and visualization of anaemia trends across pregnancy status, regions, and years.

Objectives


Compare anaemia prevalence between pregnant and non-pregnant women.

Analyze regional differences.

Examine trends across years.

Dataset


Source: WHO dataset. https://www.who.int/data/gho/data/indicators/indicator-details/GHO/prevalence-of-anaemia-in-pregnant-women-(-)
A small preview of the cleaned dataset is included here. <img width="1388" height="603" alt="who_anemia_prevalence_data_preview" src="https://github.com/user-attachments/assets/9800d7d8-1f9b-4b80-97f1-a64f3c15829d" />



Tools Used

R

Tidyverse

Ggplot2  

Dplyr

Analysis Performed

Data cleaning,
Missing value checks,
Exploratory data analysis,
ANOVA , and
Trend analysis.

Visualization.
Anemia prevalence across different regions.

<img width="872" height="587" alt="08 prevalance_across_region_barchart" src="https://github.com/user-attachments/assets/9efdb1c5-3334-4c5c-b74a-3ed42303713a" />

Key Findings.


Pregnant women showed higher anaemia prevalence.

Africa had higher prevalence than Europe.

Some regions showed declining trends over time.

Folder Structure

## Project Structure

- [a_data](./a_data/) – Contains data previews, column definitions, and dataset documentation.
  
- [b_code](./b_code/) – Contains R scripts used for data cleaning, analysis, statistical testing, and visualization.

- [c_visuals](./c_visuals/) - Charts, graphs, and visual outputs from the data.

- [d_analysis](./d_analysis/) - Written interpretation, reports, and key findings from the project.
 
    
  
How to Run
This project is implemented in R using standalone code snippets for data processing, analysis, and visualization. Each snippet is self-contained and should be executed as written in  RStudio. Download and install R and R studio desktop in your pc before running the project.

Note: This project was developed using R and RStudio. Users who are new to R are encouraged to follow online installation tutorials if they need additional guidance during setup.

1. 📥 Clone the repository
git clone https://github.com/Kenol001/global-anemia-prevalence-analysis.
cd anaemia-analysis
2. 📦 Install required packages

Run this once in your R console to install all dependencies:

install.packages(c(
  "tidyverse",
  "dplyr",
  "ggplot2",
  "readr",
  "janitor",
  "scales"
))
3. 📚 Load required packages

Before running any analysis snippets, load the libraries:

library(tidyverse)
library(dplyr)
library(ggplot2)
library(readr)
library(janitor)
library(scales)
4. 📂 Prepare the dataset

Import the dataset into R by navigating to rstudio files section then to import dataset and choose the dataset as saved in your device. This is the link.https://www.who.int/data/gho/data/indicators/indicator-details/GHO/prevalence-of-anaemia-in-pregnant-women-(-) 

5. ▶️ Run the analysis

All code in this project is provided as independent snippets.

👉 Each snippet should be:

Copied exactly as written
Run sequentially in RStudio
Executed in order from data import → cleaning → analysis → visualization

⚠️ Important Notes
Do not modify code snippets unless necessary
Run snippets in sequence to avoid object not found errors
Ensure all required packages are installed and loaded before starting
All outputs (tables/plots) are generated directly in the R environment
