import matplotlib

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
        r"results\{country}\windfactorHist_{country}_{year}_Offshore.png"
    shell:
        r"python scripts\make_hist.py {input} {output}"


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

