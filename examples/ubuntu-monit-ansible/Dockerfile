############################################################################################
# Build image:                                                                             #
#   docker build --tag="ubuntu-monit-ansible" .                                            #
#                                                                                          #
# Run container:                                                                           #
#   docker run -d -p 2832:2812 -p 127.0.0.1:322:22 ubuntu-monit-ansible                    #
#                                                                                          #
# Bash it:                                                                                 #
#   docker ps -a                                                                           #
#   docker exec -it <NameOrID> bash                                                        #
#                                                                                          #
############################################################################################

FROM base-ubuntu-14.04
MAINTAINER Andrew Price <andrew.j.price@gmail.com>

# Copy Ansible files, Run Playbook, then Cleanup
ADD ansible /root/ansible/
RUN ansible-playbook -vvv /root/ansible/play.yml -c local
RUN rm -rf /root/ansible/

# Set Executable
ENTRYPOINT ["/usr/bin/monit", "-I"]