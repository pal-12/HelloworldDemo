# Use the openjdk:17 image as the base image
FROM openjdk:17
EXPOSE 8282

# Add the built JAR file to the container
ADD ./target/HelloWorld-0.0.1-SNAPSHOT.jar HelloWorld-0.0.1-SNAPSHOT.jar

# Set the entry point to run the JAR file when the container starts
ENTRYPOINT ["java", "-jar", "HelloWorld-0.0.1-SNAPSHOT.jar"]
