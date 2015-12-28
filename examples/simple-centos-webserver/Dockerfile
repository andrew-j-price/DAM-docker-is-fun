###################################################################
# Build image:                                                    #
#   docker build --tag="simple-centos-7-webserver" .              #
#                                                                 #
# Run container:                                                  #
#   docker run -d -p 8880:80 simple-centos-7-webserver            #
#                                                                 #
# Bash it:                                                        #
#   docker ps -a                                                  #
#   docker exec -it <NameOrID> bash                               #
#                                                                 #
###################################################################

FROM base-centos-7

# Add playbooks to the Docker image
ADD ansible /srv/example/
WORKDIR /srv/example

# Run Ansible to configure the Docker image
RUN ansible-playbook -vvv site.yml -c local

# Other Dockerfile directives are still valid
EXPOSE 80
ENTRYPOINT ["/usr/local/bin/apachectl", "-DFOREGROUND"]