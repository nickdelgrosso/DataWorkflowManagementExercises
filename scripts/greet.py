


def main(filename):
    with open(filename, "w") as f:
        f.write("Hello World!")



if __name__ == '__main__':

    from argparse import ArgumentParser

    parser = ArgumentParser(description="Makes a text file that says Hello World")
    parser.add_argument("file", help="The filename to create")

    args = parser.parse_args()

    main(filename=args.file)