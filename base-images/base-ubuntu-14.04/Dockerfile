###################################################################
# Build image:                                                    #
#   docker build --tag="base-ubuntu-14.04" .                      #
#                                                                 #
###################################################################

FROM ubuntu:14.04
MAINTAINER Andrew Price <andrew.j.price@gmail.com>

RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get install -y curl git monit netcat-openbsd openssh-server tcpdump vim wget

RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts