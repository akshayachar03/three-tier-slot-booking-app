# Use a slim official Python image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy only requirements first for layer caching
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the entire project (after installing dependencies)
COPY . .

# Expose the port Flask runs on
EXPOSE 5000

# Run the app
CMD ["python", "main.py"]

