# aj_capstone : Refer : Project_Capstone_AndrewJones_D019WE-E document for Screenshots.

1.	EC2 Instance Creation:
     An Amazon EC2 instance has been provisioned using the Ubuntu Amazon Machine Image (AMI) and the t2.micro instance type.
  	  An Security group creation also done along with it for respective ports.
3.	GitHub Project Cloning:
    The project has been cloned from the GitHub repository located at this link onto the local EC2 instance.
4.	Project Artifacts:
o	As part of the capstone project, the following files have been created under the path /root/devops-build:
	Dockerfile
	Jenkinsfile
	README.md
	build
	build.sh
	deploy.sh
	docker-compose.yaml
5.	Authentication Tokens:
   	A Personal Access Token (PAT) has been generated for authentication purposes on the GitHub host.
  	Additionally, a Docker token has been created to facilitate sign-in using the Docker CLI on Docker Hub.
6.	GitHub Repository Upload:
  	After successful cloning, the project artifacts have been uploaded to the GitHub repository using the following Git commands:
o	git init
o	git add .
o	git commit -m "first commit"
o	git branch -M main
o	git remote add origin https://github.com/DreJones06/aj_capstone.git
o	git push -u origin main
7.	Docker Installation:
    	Docker and Docker Compose have been installed by following the official documentation:
	Docker installation guide for Ubuntu: Docker Installation Guide
	Docker Compose installation guide for Linux: Docker Compose Installation Guide
       https://docs.docker.com/engine/install/ubuntu/ & https://docs.docker.com/compose/install/linux/
8.	Jenkins Setup:
    Jenkins has been installed on the Ubuntu server using the instructions provided in this guide: https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-22-04 
9.	Freestyle Project Creation:
    A freestyle project has been set up in Jenkins specifically for the capstone project.
10.	Deployment Configuration:
    The deployment configuration has been established by linking the capstone project to the GitHub repository (dev branch).[deploy.sh & build.sh]
11.	Pipeline Setup:
    A pipeline has been created to execute the deployment process, integrating the Jenkinsfile and Docker execution.
12.	Successful Deployment:
    Upon successful execution, the application is now hosted and accessible via a web browser.
13.	Monitoring and Alerts:
    CloudWatch alerts have been configured to notify in case of application downtime under threshold limit.
14.	Health Checks with Prometheus:
    Prometheus has been set up to monitor the health of the local host.
