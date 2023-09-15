FROM openjdk:17-ea-11-jdk-slim

WORKDIR /app

ARG JAR_FILE="build/libs/continuous-0.0.1-SNAPSHOT.jar"

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","app.jar"]