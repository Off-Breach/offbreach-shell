FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac offbreach-1.0-SNAPSHOT-jar-with-dependencies.jar
CMD ["java", "MainMebu"]