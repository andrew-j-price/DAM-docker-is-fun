############################################################################################
# Build image:                                                                             #
#   docker build --tag="ubuntu-monit" .                                                    #
#                                                                                          #
# Run container:                                                                           #
#   docker run -d -p 2822:2812 -p 222:22 ubuntu-monit                                      #
#                                                                                          #
# Bash it:                                                                                 #
#   docker ps -a                                                                           #
#   docker exec -it <NameOrID> bash                                                        #
#                                                                                          #
############################################################################################

FROM base-ubuntu-14.04
MAINTAINER Andrew Price <andrew.j.price@gmail.com>

# Configure Monit
RUN rm -rf /etc/monit/
ADD monit-configs /etc/monit/conf.d/
ADD monitrc /etc/monit/monitrc
RUN chmod 600 /etc/monit/monitrc

# Add SSH key(s)
RUN mkdir /root/.ssh && chmod 700 /root/.ssh
ADD authorized_keys /root/.ssh/
RUN chmod 600 /root/.ssh/authorized_keys && chown root:root /root/.ssh/authorized_keys

# Publish Services
EXPOSE 22 2812
ENTRYPOINT ["/usr/bin/monit", "-I"]