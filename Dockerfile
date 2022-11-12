FROM openjdk:8-jre
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN java -jar offbreach-1.0-SNAPSHOT-jar-with-dependencies.jar
CMD ["java", "Main"]