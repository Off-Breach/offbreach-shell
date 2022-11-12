FROM openjdk:8-jre
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac offbreach-1.0-SNAPSHOT-jar-with-dependencies.jar
CMD ["java", "Main"]