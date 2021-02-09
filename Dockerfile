FROM maven:3.6.3-jdk-8-slim

COPY ./boxfuse-sample-java-war-hello /app

WORKDIR /app

RUN mvn package && mv ./target/hello-1.0.war /tmp/hello-1.0.war && rm -rf * && mv /tmp/hello-1.0.war ./hello-1.0.war