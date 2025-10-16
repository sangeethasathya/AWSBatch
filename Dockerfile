# Use a lightweight base image
FROM python:3.11-alpine

# Set working directory
WORKDIR /app

# Copy only necessary files
COPY app.py .

# Run the app
CMD ["python", "app.py"]
