FROM ubuntu:latest  
RUN apt update -y
RUN apt install openjdk-17-jdk -y  
RUN mkdir /opt/tomcat/ 
WORKDIR /opt/tomcat/ 
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.86/bin/apache-tomcat-9.0.86.tar.gz .
RUN tar -zvxf apache-tomcat-9.0.86.tar.gz 
RUN mv apache-tomcat-9.0.86/* /opt/tomcat 
EXPOSE 8080
COPY target/app.war /opt/tomcat/webapps 
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
