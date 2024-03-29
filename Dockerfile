# # Use an official Python runtime as the base image
# FROM python:3.9-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the Python script into the container
# COPY python.py /app/python.py

# # Install any needed dependencies
# RUN pip install --no-cache-dir pylint

# # Run pylint to lint the Python script
# EXPOSE 8080

# # Define environment variable
# ENV GOOGLE_APPLICATION_CREDENTIALS=/path/to/your/credentials.json

# # Run the Python script
# CMD ["python", "python.py"]
# # new line added




# Use an official Python runtime as the base image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Create a user and group with unique UID and GID
RUN groupadd -g 15001 deid_group && \
    useradd -u 150001 -g deid_group deid_user

# Copy the Python script into the container
COPY python.py /app/python.py

# Install any needed dependencies
RUN pip install --no-cache-dir pylint

# Run pylint to lint the Python script
RUN pylint python.py

# Expose port 8080 (assuming this is the port your Python application runs on)
EXPOSE 8080

# Define environment variable
ENV GOOGLE_APPLICATION_CREDENTIALS=/path/to/your/credentials.json

# Set container user uid/gid
USER deid_user:deid_group

# Run the Python script
CMD ["python", "python.py"]
