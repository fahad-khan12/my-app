FROM ubuntu:rolling
RUN apt update -y
RUN apt install openjdk-17-jdk -y
RUN apt install maven -y
WORKDIR /app
COPY . /app
RUN mvn clean package
EXPOSE 8080
CMD ["java", "-jar", "app.*"]
