FROM java:8
WORKDIR /
ADD /taget/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar
EXPOSE 8080
CMD java - jar java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar
