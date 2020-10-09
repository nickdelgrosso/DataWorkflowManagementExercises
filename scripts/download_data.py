import requests, zipfile, io


def download_zip_from_url(url: str, extract_to: str):
    r = requests.get(url)
    z = zipfile.ZipFile(io.BytesIO(r.content))
    z.extractall(extract_to)


download_zip_from_url(
    "http://setis.ec.europa.eu/sites/default/files/EMHIRES_DATA/TS_CF_OFFSHORE_30yr_date.zip",
    "./data/orig"
)