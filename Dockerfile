# Use Python base image
FROM python:3.11-slim

# Copy script into container
COPY hello.py /app/hello.py
WORKDIR /app

# Run the script
CMD ["python", "hello.py"]
