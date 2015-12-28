docker-monit-ansible
=====================================
This project can be an ideal starting place to start learning how Docker can be leveraged and enhanced using monit and ansible.


base-images folder
===================
This folder will build the CentOS and Ubuntu base images that will be used by all of the "examples".  

Some extra administrative tools are included for convenience. 


examples folder
===================
This folder contains the information on how to build useful containers.

The examples primarily leverage monit to start the necessary processes in the containers allowing for mutliple processes to run in a container and a simple monitoring solution that can be easily enhanced further.

Many of the docker images are configured via ansible to leverage a preferred configuration management tool.
