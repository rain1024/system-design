FROM python:3.8

# Copy the current directory (your Django project) into the container
COPY . /app

# Set the working directory to /app
WORKDIR /app

# Install the dependencies
RUN pip install -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["gunicorn", "litebase.wsgi:application", "--bind", "0.0.0.0:8000"]
# CMD ["tail", "-f", "/dev/null"]