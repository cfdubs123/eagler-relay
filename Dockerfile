FROM eclipse-temurin:17-jre
WORKDIR /app
RUN apt-get update && apt-get install -y wget
RUN wget -O sp-relay.jar https://github.com/lDEVinux/eaglercraft/raw/main/stable-download/sp-relay.jar
EXPOSE 8080
CMD ["java", "-jar", "sp-relay.jar", "--debug"]
