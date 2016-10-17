FROM tomcat:8.5-jre8
ENV BUILD_NUMBER v1

COPY src /tmp
COPY pom.xml /tmp
RUN cd /tmp && mvn package

COPY /tmp/src/target/HelloDevOp-1.0-SNAPSHOT.war  /usr/local/tomcat/webapps/
