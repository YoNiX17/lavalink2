FROM eclipse-temurin:17-jdk-alpine

WORKDIR /opt/lavalink

# On télécharge Lavalink v4.0.8 (Stable)
ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar Lavalink.jar

COPY application.yml application.yml

EXPOSE 2333

CMD ["java", "-Djdk.tls.client.protocols=TLSv1.1,TLSv1.2", "-Xmx512m", "-jar", "Lavalink.jar"]