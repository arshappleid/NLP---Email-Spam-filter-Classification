# Use the latest official Python image from DockerHub
FROM python:3.8-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory (i.e., your Python app) into the container
COPY src/ .

EXPOSE 5000

# By default, execute python when the container starts
CMD ["python", "./app.py"]
