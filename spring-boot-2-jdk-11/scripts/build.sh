#!/bin/bash

cd ..
./gradlew clean build
java -Djarmode=layertools -jar build/libs/metlife02-1.0-SNAPSHOT.jar extract
docker-compose up -d --build