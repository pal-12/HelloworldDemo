# Use the openjdk:11 image as the base image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to the working directory in the container
COPY . .

# Display the list of files in the working directory for debugging purposes
RUN ls -l

# Update package lists and install Maven
RUN apt-get update && apt install -y maven

# RUN wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz -P /tmp 
# RUN tar xf /tmp/apache-maven-*.tar.gz -C /opt && ln -s /opt/apache-maven-3.9.6 /opt/maven && export M3_HOME=/opt/maven && export MAVEN_HOME=/opt/maven && export PATH=${M3_HOME}/bin:${PATH}

# Build the project with Maven
RUN mvn clean install

# Display the list of files in the working directory after Maven build for debugging purposes
RUN ls -l

# Add the built JAR file to the container
ADD ./target/HelloWorld-0.0.1-SNAPSHOT.jar HelloWorld-0.0.1-SNAPSHOT.jar

# Set the entry point to run the JAR file when the container starts
ENTRYPOINT ["java", "-jar", "HelloWorld-0.0.1-SNAPSHOT.jar"]

