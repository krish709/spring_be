# Use Java 17 image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Give permission to gradlew
RUN chmod +x gradlew

# Build the application
RUN ./gradlew build -x test

# Expose Spring Boot port
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "build/libs/crudapp-0.0.1-SNAPSHOT.jar"]