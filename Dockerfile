FROM maven:3.6.3-jdk-8-slim

COPY ./boxfuse-sample-java-war-hello /app

WORKDIR /app

CMD ["mvn", "package"]