#!/bin/bash
set -e

cd /home/ubuntu

TOKEN=$(aws ecr get-login-password --region ap-southeast-1)
docker login --username AWS --password-stdin 209314125202.dkr.ecr.ap-southeast-1.amazonaws.com <<< "$TOKEN"


docker compose up -d 