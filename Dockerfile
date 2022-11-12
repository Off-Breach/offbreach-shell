FROM openjdk:11
COPY . /offbreach-shell/offBreach
WORKDIR /offbreach-shell/offBreach
RUN javac -cp MainMenu.java
CMD ["java", "Main"]