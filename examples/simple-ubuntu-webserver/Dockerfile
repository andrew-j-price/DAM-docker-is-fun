###################################################################
# Build image:                                                    #
#   docker build --tag="simple-ubuntu-14.04-webserver" .          #
#                                                                 #
# Run container:                                                  #
#   docker run -d -p 8888:80 simple-ubuntu-14.04-webserver        #
#                                                                 #
# Bash it:                                                        #
#   docker ps -a                                                  #
#   docker exec -it <NameOrID> bash                               #
#                                                                 #
###################################################################

FROM base-ubuntu-14.04

# Add playbooks to the Docker image
ADD ansible /srv/example/
WORKDIR /srv/example

# Run Ansible to configure the Docker image
RUN ansible-playbook -vvv site.yml -c local

# Other Dockerfile directives are still valid
EXPOSE 80
ENTRYPOINT ["/usr/local/bin/apachectl", "-DFOREGROUND"]