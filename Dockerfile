FROM maven:3.6.3-jdk-8-slim

COPY ./boxfuse-sample-java-war-hello /app

WORKDIR /app
SHELL ["/bin/bash", "-c"]
RUN mvn package && cp ./target/hello-1.0.war ./hello-1.0.war && rm -rf !("hello-1.0.war")