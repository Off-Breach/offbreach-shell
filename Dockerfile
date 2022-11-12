FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac -classpath %classpath Main.java
CMD ["java", "Main"]