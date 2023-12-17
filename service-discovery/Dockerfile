# Start with a base image containing Java runtime
# Start a new stage `builder` from the OpenJDK 17 Alpine base image.
FROM openjdk:17-alpine AS builder

# Add Maintainer Info
LABEL maintainer="Kumaran"

# Set the working directory inside the container to `/app`
WORKDIR /app

# Copy the Maven project file (pom.xml) and the Maven wrapper script (mvnw) to the /app directory.
COPY pom.xml mvnw ./

# Copy the Maven wrapper configuration directory into image/container
COPY .mvn .mvn

# Copy the application's source code into the image/container.
COPY src src

# Run the Maven wrapper to build the package in batch mode, skipping tests.
RUN ./mvnw -B clean package -DskipTests

# Start a new stage `run` from the OpenJDK 17 Alpine base image.
FROM openjdk:17-alpine AS run

# Set the working directory inside the container to `/app`
WORKDIR /app

# copy the application's jar  from builder stage to the container
COPY --from=builder /app/target/*.jar app.jar

# Make port 8761 available to the world outside this container - Inform Docker that the container listens on the specified port at runtime.
EXPOSE 8761

# Run the application
#CMD ["java", "-Dspring.profiles.active=<profile>", "-jar", "app.jar"]
CMD ["java", "-jar", "app.jar"]





