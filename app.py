from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Welcome to Python Single-Tier App 🚀</h1>"

@app.route("/about")
def about():
    return "<h2>This is a Flask app running locally</h2>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)