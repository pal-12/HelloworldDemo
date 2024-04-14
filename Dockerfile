# Use the openjdk:17 image as the base image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to the working directory in the container
COPY . .

# Display the list of files in the working directory for debugging purposes
RUN ls -l

# Update package lists and install Maven
RUN apt-get update && apt-get install -y maven

# Build the project with Maven
RUN mvn clean install

# Display the list of files in the working directory after Maven build for debugging purposes
RUN ls -l

# Add the built JAR file to the container
ADD ./target/HelloWorld-0.0.1-SNAPSHOT.jar HelloWorld-0.0.1-SNAPSHOT.jar

# Set the entry point to run the JAR file when the container starts
ENTRYPOINT ["java", "-jar", "HelloWorld-0.0.1-SNAPSHOT.jar"]
