#!/bin/bash

# Stop and remove containers
docker-compose down

# Remove images
docker rmi web-sv api-sv postgres redis
