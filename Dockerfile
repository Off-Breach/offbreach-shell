FROM openjdk:8-jre
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac UIResponsive.java
CMD ["java", "Main"]