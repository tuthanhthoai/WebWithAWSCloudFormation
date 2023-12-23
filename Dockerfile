FROM openjdk:17

COPY target/SpringBootWeb-0.0.1-SNAPSHOT.jar webCloud-SpringBootWeb-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "/webCloud-SpringBootWeb-0.0.1-SNAPSHOT.jar"]