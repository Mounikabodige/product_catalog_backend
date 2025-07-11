# Use JDK 24 base image
FROM eclipse-temurin:24-jdk-alpine

WORKDIR /app

# Copy the Spring Boot fat jar (build this first)
COPY target/product-backend-0.0.1-SNAPSHOT.jar product-backend-app.jar

# Expose your backend port (usually 8080)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "product-backend-app.jar"]