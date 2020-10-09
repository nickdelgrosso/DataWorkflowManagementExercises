import pandas as pd
import matplotlib.pyplot as plt



def make_histogram(df: pd.DataFrame) -> plt.Figure:
    ax = df.WindFactor.plot.hist()
    return ax.figure




def main(filename, hist):
    df = pd.read_csv(filename)
    fig = make_histogram(df=df)
    fig.savefig(hist)




if __name__ == '__main__':

    from argparse import ArgumentParser

    parser = ArgumentParser(description="Makes a text file that says Hello World")
    parser.add_argument("file", help="The filename to create")
    parser.add_argument("hist", help="The picture to create")

    args = parser.parse_args()

    main(filename=args.file, hist=args.hist)