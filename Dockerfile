FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac -cp .:lib.jar MainMenu.java
CMD ["java", "Main"]