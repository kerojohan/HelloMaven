FROM tomcat:8.5-jre8
ENV BUILD_NUMBER v1
ENV MAVEN_TGZ_URL=http://apache.mirror.iweb.ca/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz

COPY src /tmp
COPY pom.xml /tmp
RUN curl -fSL "$MAVEN_TGZ_URL" -o /tmp/maven.tar.gz \
    && tar -xvf /tmp/maven.tar.gz --strip-components=1  -C maven     \
    && ln -s /maven/bin/mvn /usr/bin/mvn \
    && cd /tmp && mvn package 
    
COPY /tmp/src/target/HelloDevOp-1.0-SNAPSHOT.war  /usr/local/tomcat/webapps/
