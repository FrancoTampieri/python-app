from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello, DevOps with Python 3.12!"


if __name__ == "__main__":
    app.run(host="0.0.0.00", port=8000)
