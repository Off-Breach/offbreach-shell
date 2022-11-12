FROM openjdk:8-jre
COPY . /usr/src/com/offBreach
WORKDIR /usr/src/com/offBreach
RUN javac MainMenu.java
CMD ["java", "Main"]