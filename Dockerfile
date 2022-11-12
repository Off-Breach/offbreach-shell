FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac -cp .;lib.jar a.java
CMD ["java", "Main"]