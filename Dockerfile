FROM openjdk:11

WORKDIR /usr/src/app

COPY . .
ENV PORT 9090
ENV HOST 0.0.0.0

EXPOSE 9090

RUN ./gradlew clean build -x test

ENTRYPOINT ["./gradlew","bootRun"]