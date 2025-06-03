FROM frolvlad/alpine-oraclejdk8:slim

VOLUME /tmp

# Copy your JAR from target/ directory into the image
COPY target/springboot-application-0.0.1-SNAPSHOT.jar springboot-application.jar

# (Optional) Ensure the JAR is recognized by Docker layer caching
RUN touch springboot-application.jar

# Set the entrypoint to run your Spring Boot app
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "springboot-application.jar"]

# Expose the port your app runs on
EXPOSE 8081

