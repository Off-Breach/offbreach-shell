FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac -deprecation -cp MainMenu.java
CMD ["java", "Main"]