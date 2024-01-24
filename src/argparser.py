import argparse

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("port", help="port number", type=int)
    args = parser.parse_args()
    return args.port