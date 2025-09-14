# Use an official Python image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Expose Flask port
EXPOSE 5000

# Run Flask
CMD ["python", "app.py"]
