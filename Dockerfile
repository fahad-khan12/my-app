FROM ubuntu:latest
RUN apt update -y
RUN apt install openjdk-17-jdk -y
RUN apt install mvn -y
WORKDIR /app
COPY . /app
RUN mvn clean package
EXPOSE 8080
CMD ["java", "-jar", "app.*"]
