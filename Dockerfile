FROM openjdk:8-jre
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac MainMenu.java
CMD ["java", "Main"]