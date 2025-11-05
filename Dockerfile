# Step 1: Use OpenJDK base image
FROM eclipse-temurin:17-jdk

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy Gradle build output (JAR file)
COPY build/libs/*.jar app.jar

# Step 4: Expose app port
EXPOSE 8080

# Step 5: Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
