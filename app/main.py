from flask import Flask, send_from_directory, render_template
import os

app = Flask(__name__)

BASE_DIR = os.path.abspath(".")
HTML_FILE = "ITO7OBblU_l7r0eKT.html"
DATA_FOLDER = os.path.join(BASE_DIR, "ITO7OBblU_l7r0eKTdata")


@app.route("/")
def index():
    return send_from_directory(BASE_DIR, HTML_FILE)


@app.route("/ITO7OBblU_l7r0eKTdata/<path:filename>")
def data_files(filename):
    return send_from_directory(DATA_FOLDER, filename)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
