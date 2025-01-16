# Use the official Python image from the Docker Hub
FROM python:3.9.2

# Copy the requirements.txt file into the Docker image
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "views.py"]
