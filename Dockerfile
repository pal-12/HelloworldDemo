FROM openjdk:11
COPY . .
RUN ls -l
RUN  apt update &&  apt install -y maven
RUN mvn clean install
ADD target/HelloWorld-0.0.1-SNAPSHOT.jar HelloWorld-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","HelloWorld-0.0.1-SNAPSHOT.jar"]
