# Use a lightweight Python image
FROM python:3.11-slim

WORKDIR /app
COPY app.py .

# Install Flask
RUN pip install flask

# Run the app
CMD ["python", "app.py"]
