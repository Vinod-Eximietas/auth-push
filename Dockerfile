# Use an official Python runtime as the base image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Create a user and group with unique UID and GID
RUN groupadd -g 15001 deid_group && \
    useradd -u 150001 -g deid_group deid_user
    
# Copy the Python script into the container
COPY python.py /app/python.py

# Install pylint
RUN pip install --no-cache-dir pylint

# Try running pylint separately
# RUN pylint python.py
RUN pylint python.py > pylint_output.txt 2>&1 || cat pylint_output.txt

# Run pylint to lint the Python script
EXPOSE 8080

# Run the Python script
CMD ["python", "python.py"]
