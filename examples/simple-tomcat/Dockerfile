###################################################################
# Build image:                                                    #
#   docker build --tag="simple-tomcat" .                          #
#                                                                 #
# Run container:                                                  #
#   docker run -d -p 8080:8080 simple-tomcat                      #
###################################################################

FROM tomcat
MAINTAINER Andrew Price <andrew.j.price@gmail.com>

ADD ./tomcat/server.xml /usr/local/tomcat/conf/server.xml
ADD ./tomcat/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD ./tomcat/ROOT /usr/local/tomcat/webapps/ROOT
