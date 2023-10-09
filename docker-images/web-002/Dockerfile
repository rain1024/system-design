FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the app.py file into the container at /app
COPY app.py /app/

# Install Flask
RUN pip install --trusted-host pypi.python.org Flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable (optional, this isn't used in the example)
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]