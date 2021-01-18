#!/bin/bash

# spin flask image
cd flask_app
docker build -t my-nginx:latest .

# spin nginx image
cd ../nginx
docker build -t app:latest .

# spin the infra
cd ..
docker-compose up