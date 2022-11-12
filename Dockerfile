FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac -classpath MainMenu.java
CMD ["java", "Main"]