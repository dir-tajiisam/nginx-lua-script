from flask import Flask, request

app = Flask(__name__)


@app.route("/app")
def hello_world() -> str:

    return "Hello from the backend app!"


# post and print post data
@app.route("/app", methods=["POST"])
def post_data() -> str:
    data = request.get_json()
    print(data)
    return f"Data received! {data}"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
