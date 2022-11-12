FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac -cp .;/lib/j2ee.jar:/jre/lib/rt.jar offBreach/src/main/java/com/offbreach/
CMD ["java", "Main"]