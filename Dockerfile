FROM eclipse-temurin:17-jre
WORKDIR /app
RUN apt-get update && apt-get install -y curl
RUN curl -L -o sp-relay.jar https://github.com/catfoolyou/EaglerX-Server/raw/main/sp-relay.jar
EXPOSE 8080
CMD ["java", "-jar", "sp-relay.jar", "--debug"]
