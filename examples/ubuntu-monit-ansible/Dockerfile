############################################################################################
# Build image:                                                                             #
#   docker build --tag="ubuntu-monit-ansible" .                                            #
#                                                                                          #
# Run container:                                                                           #
#   docker run -d -p 2832:2812 -p 322:22 ubuntu-monit-ansible                              #
#                                                                                          #
# Bash it:                                                                                 #
#   docker ps -a                                                                           #
#   docker exec -it <NameOrID> bash                                                        #
#                                                                                          #
############################################################################################

FROM base-ubuntu-14.04
MAINTAINER Andrew Price <andrew.j.price@gmail.com>

# Add playbooks to the Docker image
ADD ansible /root/ansible/
WORKDIR /root/ansible

# Run Ansible to configure the Docker image
RUN ansible-playbook -vvv play.yml -c local

# Publish Services
EXPOSE 22 2812
ENTRYPOINT ["/usr/bin/monit", "-I"]