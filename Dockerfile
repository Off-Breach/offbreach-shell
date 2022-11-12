FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac -deprecation -classpath /offBreach/src/main/java/com/offbreach/MainMenu.java
CMD ["java", "Main"]