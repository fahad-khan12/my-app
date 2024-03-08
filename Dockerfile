FROM ubuntu:latest
Run apt update -y && \
    apt install openjdk-17-jdk -y && \
    apt install mvn -y
WORKDIR /app
COPY . /app
RUN mvn clean package
EXPOSE 8080
CMD ["java", "-jar", "app.*"]
