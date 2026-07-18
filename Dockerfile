FROM ubuntu
RUN apt update \
    && apt-get install openjdk-17-jdk -y 

WORKDIR app

COPY ./spring-petclinic-4.0.0-SNAPSHOT.jar spring-petclinic-4.0.0-SNAPSHOT.jar

RUN chmod 755 spring-petclinic-4.0.0-SNAPSHOT.jar

CMD ["java", "-jar", "app/spring-petclinic-4.0.0-SNAPSHOT.jar"]