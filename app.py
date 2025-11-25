from flask import Flask
import os
import datetime

app = Flask(__name__)

@app.route("/")
def hello():
    # Current UTC timestamp
    now = datetime.datetime.utcnow().isoformat()

    # Grab build info from environment if you want to inject it later
    build_id = os.environ.get("BUILD_ID", "unknown")

    return f"Hello from Cloud Run! Timestamp: {now} | Build ID: {build_id}"

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    app.run(host="0.0.0.0", port=port)
