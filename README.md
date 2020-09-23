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

