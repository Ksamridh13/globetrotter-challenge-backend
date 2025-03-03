#!/bin/bash

# Install Java if it's missing
if ! command -v java &> /dev/null
then
    echo "Java not found, installing..."
    apt-get update && apt-get install -y openjdk-17-jdk
fi

# Set JAVA_HOME explicitly
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
echo "Using JAVA_HOME: $JAVA_HOME"

# Ensure mvnw is executable
chmod +x mvnw

# Run Maven build
./mvnw clean package

