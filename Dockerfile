FROM openjdk:8-jdk-alpine

ARG profile=local
ENV PROFILE=${profile}

ADD target/*.jar app.jar
EXPOSE 5000

ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=${PROFILE} -jar /app.jar" ]
