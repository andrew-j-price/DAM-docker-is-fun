FROM base-ubuntu-14.04
MAINTAINER Andrew Price <andrew.j.price@gmail.com>

# Copy Ansible files, Run Playbook, then Cleanup
ADD ansible /root/ansible/
RUN ansible-playbook -vvv /root/ansible/play.yml -c local
RUN rm -rf /root/ansible/

# Set Executable
ENTRYPOINT ["/usr/bin/monit", "-I"]