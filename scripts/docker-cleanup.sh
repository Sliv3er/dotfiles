#!/bin/bash
# Docker cleanup script - Ayoub Ghodhbane
echo 'Stopping all containers...'
docker stop $(docker ps -aq) 2>/dev/null
echo 'Removing stopped containers...'
docker container prune -f
echo 'Removing unused images...'
docker image prune -af
echo 'Removing unused volumes...'
docker volume prune -f
echo 'Removing unused networks...'
docker network prune -f
echo 'Docker cleanup complete!'
docker system df