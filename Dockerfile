# Use a base image with Java and Spring Boot
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Expose port 8080 (optional, for documentation purposes)
EXPOSE 8080

# Copy the JAR file into the container
COPY target/springboot-demo-0.0.1-SNAPSHOT.jar /springboot-demo-0.0.1-SNAPSHOT.jar

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "springboot-demo-0.0.1-SNAPSHOT.jar"]


#FROM openjdk:11
#EXPOSE 8080
#ADD target/springboot-demo-0.0.1-SNAPSHOT.jar  kubernetass5
#ENTRYPOINT ["java","-jar","/springboot-demo-0.0.1-SNAPSHOT.jar"]