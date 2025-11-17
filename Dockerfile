FROM python:3.10-slim

# Create working directory
WORKDIR /app

# Copy dependency files
COPY requirements.txt .

# Install dependencies efficiently
RUN pip install --no-cache-dir -r requirements.txt

# Copy your batch job code
COPY process_data.py .

# Default command (runs your job)
CMD ["python", "process_data.py"]
