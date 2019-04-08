#!/bin/sh

if [ -z $1 ]; then
  echo "===== RESTART Kafka Locally ====="
  docker-compose -f kafka.docker-compose.yml down
  docker-compose -f kafka.docker-compose.yml up -d 
elif [[ $1 = "start" ]]; then
 echo "===== START Kafka Locally ====="
 docker-compose -f kafka.docker-compose.yml up -d
elif [[ $1 = "stop" ]]; then
  echo "===== STOP Kafka Locally ====="
  docker-compose -f kafka.docker-compose.yml down 
fi
