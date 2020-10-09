import matplotlib
import os

matplotlib.use("Agg")


rule all:
    input:
        r"data\orig\TS.CF.OFFSHORE.30yr.date.txt",
        "hello.txt",
        "goodbye.txt",
        r"results\DE\windfactorHist_DE_1990_Offshore.png",
        r"results\DE\windfactorHist_DE_1991_Offshore.png",
        r"results\DE\windfactorHist_DE_1992_Offshore.png",



rule make_histogram:
    input:
        r"data\processed\{country}\Offshore-{year}.csv"
    output:
        hist_file = r"results\{country}\windfactorHist_{country}_{year}_Offshore.png",
        notebook = r"logs\{country}\MakeHistogram-{country}-{year}.ipynb"
    params:
        wdir = os.getcwd()
    shell:
        r"""
        papermill notebooks\MakeHistogram.ipynb {output.notebook} -p wdir {params.wdir} -p csv_file {input} -p hist_file {output.hist_file}
        """


rule:
    output:
      r"data\orig\TS.CF.OFFSHORE.30yr.date.txt"
    script:
        r"scripts\download_data.py"



rule:
    output:
      "{greeting}.txt"
    shell:
        r"python scripts\greet.py {output}"

