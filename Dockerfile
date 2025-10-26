# 1. Base image: Java 21
FROM eclipse-temurin:21-jdk-jammy

# 2. Set working directory inside container
WORKDIR /todo

# 3. Copy project files
COPY pom.xml .
COPY src ./src
COPY mvnw .
COPY .mvn .mvn
# 4. Build the project using Maven wrapper
RUN ./mvnw clean package -DskipTests

# 5. Copy the built jar file
COPY target/todo-0.0.1-SNAPSHOT.jar todo.jar


EXPOSE 2006

# 7. Command to run the app
ENTRYPOINT ["java", "-jar", "todo.jar"]
