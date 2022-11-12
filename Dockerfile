FROM openjdk:11
COPY . /usr/src/offBreach
WORKDIR /usr/src/offBreach
RUN javac -sourcepath './src' -d './bin' -verbose './src/MainMenu.java'
CMD ["java", "Main"]