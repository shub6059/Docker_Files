# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and Gunicorn
RUN pip install flask gunicorn

# Expose the port Flask will run on
EXPOSE 5000

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Command to run when the container starts
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
