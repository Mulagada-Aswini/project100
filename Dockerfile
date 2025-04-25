# Use an official Python runtime
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy dependency file and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the code
COPY . .

# Expose the app port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
