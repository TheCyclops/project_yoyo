from flask import Flask
app = Flask(__name__)

@app.route("/yoyo")
def hello():
    status =  "Project Yoyo: it's up, it's down - who knows where it will end up!"
    return status

if __name__ == "__main__":
    app.run(host='0.0.0.0') # open to the world - what could go wrong?
