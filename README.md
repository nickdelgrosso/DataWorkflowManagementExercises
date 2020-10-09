# Data Workflow Management Exercises

## Installation: Python Packages

This project uses jupyter lab, pandas, dask, papermill, and snakemake, along with a few other packages for downloading and reading the data.  The simplest way to get a working environment is to use the `environment.yml` file in this repository and activate it:

```
conda env create -f environment.yml
conda activate data-man-wkshop
```

### Data Used

We'll be working with the files from the EMHIRES dataset: https://setis.ec.europa.eu/EMHIRES-datasets

The jupyter notebook `0-DownloadData.ipynb` can be used to get the data directly from the website into the correct folder.


### Data Analysis Goal

This goal will be to make two plots for each year/country combination in each of the two datasets:

```
data
   orig
     TS.CF.OFFSHORE.30yr.date
     data/orig/EMHIRES_WIND_COUNTRY_June2019.xlsx
   processed
     AL
       Offshore_AL_1985.csv
       Offshore_AL_1986.csv
       Onshore_AL_1985.csv
     BE
       ...
       
results
  windfactor_hists
    windfactorHist_AL_1985_Offshore.png
  windfactor_timeseries  
    windfactorTimeSeries_AL_1985_Offshore.png
    
 
 ```

### Topics

The goal of this approach will be to explore different batch analysis coding structures and look for how we can make our code:
   - **Reasonable**: we can understand both the code's structure and its behavior when reading it.
   - **Introspectable**: we can interact with it, largely when debugging
   - **Extendable**: we can add new steps to our data processing pipeline with a reasonably-low amount of effort and increase its value.
   - **Reusable**: good components can be taken from this project and put into another one with minimal modification.  
   - **Portable**: the code can be run on other computers with a reasonably-low amount of effort.
   
   
That discussion will include explorations of some computer science topics:
  - **Lazy Evaluation**
  - **Data Pipelines and Directed Acyclic Graphs**
  - **Dependency Injection and Directional Coupling**
  
  
