#!/bin/bash
export JAVA_HOME=/opt/render/project/.render/java
echo "Using JAVA_HOME: $JAVA_HOME"

chmod +x mvnw
./mvnw clean package
