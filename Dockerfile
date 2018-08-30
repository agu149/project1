# Use an official maven runtime as a parent image
FROM maven:slim

# Install any needed packages specified in requirements.txt
RUN mkdir /app

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /
ADD . . 

# Validate files copied and location 
RUN pwd
RUN ls -ltr /

# Run maven clean & install command 
RUN mvn -Dmaven.test.failure.ignore clean install



  



