#!/bin/bash
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))
echo "Using JAVA_HOME: $JAVA_HOME"
chmod +x mvnw
./mvnw clean package

