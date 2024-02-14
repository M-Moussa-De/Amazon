#!/bin/bash

# Set the name of your Docker Compose file
DOCKER_COMPOSE_FILE="docker-compose.yml"

# Run Docker Compose with verbose output and rebuild option
docker-compose -f $DOCKER_COMPOSE_FILE up --build
