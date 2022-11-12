FROM openjdk:11
COPY . /offbreach-shell/offBreach
WORKDIR /offbreach-shell/offBreach
RUN javac -cp /offbreach-shell/offBreach/target -d /offbreach-shell/offBreach/src/main/java/com/offbreach/MainMenu.java
CMD ["java", "Main"]