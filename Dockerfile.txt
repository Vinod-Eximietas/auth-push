# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container
COPY python.py /app/python.py

# Install any needed dependencies
RUN pip install --no-cache-dir pylint

# Run pylint to lint the Python script
RUN pylint python.py

# Define environment variable
ENV GOOGLE_APPLICATION_CREDENTIALS=/path/to/your/credentials.json

# Run the Python script
CMD ["python", "python.py"]
# new line added
