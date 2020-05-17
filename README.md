# Automating testing and deployment operation using containerized jenkins
In this project i am going to use git, github, docker, jenkins inside docker to automate testing and deployment of software or web application.

## Let's see step by step process
### 1. Create Dockerfile for creating jenkins docker image
* This is the Dockerfile code for creating jenkins docker image

![Dockerfile code]()

* Run the following command in the same directory to create jenkins docker image

      docker build -t jenkins:latest .
      
### 2. Launch the jenkins container using the following command

    docker container run -it --name jenkin -v jen:/root/ -p 8888:8080 jenkins:latest
    
   Here **jen** is the volume, attached to the root folder of the jenkins container for keeping  the data persistant. To create the volume for docker container use the following command 
  
    docker volume create volume_name (in my case volume_name is jen)
    
   After this setup jenkins, install required plugins like Git, Email notification and Build pipeline.
   
### 3. Let's create the jobs in the jenkins for automation
#### Job 1: Pull the code from github repository as soon as developer commit 
   
