Hello World Flask App Dockerization
This repository contains a simple "Hello World" web application built using Flask and containerized with Docker.

Getting Started
To run this application locally, make sure you have Docker installed on your machine.

Build the Docker Image
Open a terminal and navigate to the directory containing the Dockerfile and app.py files.

Run the following command to build the Docker image:

bash

-- docker build -t hello-world-app .

Run the Docker Container

Once the Docker image is built, start a container based on the image using:


-- docker run -p 5000:5000 hello-world-app

Access the Application

Open your web browser and navigate to http://localhost:5000 to view the "Hello World" message.

