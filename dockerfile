FROM openjdk:8-jre
COPY . /offBreach-CLI-1.0-SNAPSHOT-jar-with-dependencies.jar/
CMD ["java", "-jar", "offBreach-CLI-1.0-SNAPSHOT-jar-with-dependencies.jar"]