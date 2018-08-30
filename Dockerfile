FROM maven:slim

WORKDIR /var/jenkins_home/workspace/Project1

COPY . ./
RUN pwd
RUN ls -ltr ./

  



