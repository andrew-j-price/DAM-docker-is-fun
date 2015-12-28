###################################################################
# Build image:                                                    #
#   docker build --tag="base-centos-7" .                          #
#                                                                 #
###################################################################

FROM centos:centos7
MAINTAINER Andrew Price <andrew.j.price@gmail.com>

RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip && \
    yum -y install curl git monit nc openssh-server tcpdump vim wget
RUN mkdir /etc/ansible/
RUN pip install ansible

RUN echo -e '[local]\nlocalhost' > /etc/ansible/hosts