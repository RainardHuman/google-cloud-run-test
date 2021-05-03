FROM openjdk:11

ADD build/libs/grindhouse-0.0.1-SNAPSHOT.jar grindhouse.jar

EXPOSE 9090

ENTRYPOINT ["java","-jar","grindhouse.jar"]

