# Use an official Python runtime as a parent image
FROM maven:slim

# Set the working directory to /
WORKDIR /

# Copy the current directory contents into the container at /
ADD . /

# Install any needed packages specified in requirements.txt
RUN pwd
RUN ls -ltr /



  



