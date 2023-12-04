# Use a base image with Alpine Linux
FROM alpine:latest

# Install OpenJDK (Java tools are included)
RUN apk update && apk add openjdk11


# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY Main.java .

# Compile the Java code
RUN javac Main.java

# Run the compiled Java program
CMD ["java", "Main"]
