# from flask import Flask
# server = Flask(__name__)

# @server.route("/")
# def hello():
#     return "Hello World!"

# if __name__ == "__main__":
#    server.run(host='0.0.0.0')

from flask import Flask
from argparser import parse_args

server = Flask(__name__)
PORT = parse_args()

@server.route("/")
def hello():
    return "Hello World!"

if __name__ == "__main__":
   server.run(host='0.0.0.0', port=PORT)