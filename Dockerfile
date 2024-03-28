# Use an official Python runtime as the base image
FROM python:3.12-slim

# Create app directory
WORKDIR /app

# Create a user and group with unique UID and GID
RUN groupadd -g 15001 deid_group && \
    useradd -u 150001 -g deid_group deid_user
    
# Copy the Python script into the container
COPY python.py /app/python.py

# Install any needed dependencies Run pylint to lint the Python script
RUN pip install --no-cache-dir pylint

# Expose port 8080 (assuming this is the port your Python application runs on)
EXPOSE 8080

# Set container user uid/gid
USER deid_user:deid_group

# Run the Python script
CMD ["python", "python.py"]
