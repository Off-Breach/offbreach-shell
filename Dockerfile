FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac MainMenu.java
CMD ["java", "MainMebu"]