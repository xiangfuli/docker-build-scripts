#!/bin/bash
script_path="$(cd "$(dirname "$0")" && pwd)"

docker build -t xiangfuli/docker-repo:apriltag-generation ${script_path}

docker push xiangfuli/docker-repo:apriltag-generation