# Use official Python image with pip pre-installed
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose the port App Runner expects
EXPOSE 8080

# Run the app with gunicorn for production
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8080", "app:app"]
