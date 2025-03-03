#!/bin/bash

# Use Render's preinstalled Java
export JAVA_HOME=$(/Library/Java/JavaVirtualMachines/jdk-23.jdk/Contents/Home)
export PATH="$JAVA_HOME/bin:$PATH"

echo "Using JAVA_HOME: $JAVA_HOME"
java -version

# Ensure mvnw is executable
chmod +x mvnw

# Run Maven build
./mvnw clean package

