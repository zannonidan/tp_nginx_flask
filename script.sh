#!/bin/bash

# spin flask image
cd flask_app
docker build -t app:latest .

# spin nginx image
cd ../nginx
docker build -t my-nginx:latest .

# spin the infra
cd ..
docker-compose up