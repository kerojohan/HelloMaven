FROM tomcat:8.5-jre8
    
COPY target/hellodevops.war  /usr/local/tomcat/webapps/
