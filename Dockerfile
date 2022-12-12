# Tomcat Run Time Image
FROM tomcat:8.0

MAINTAINER Anand Iyer  <anand.iyer@ericsson.com>

COPY target/petclinic.war /usr/local/tomcat/webapps/
