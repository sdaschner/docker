#!/bin/bash
set -euo pipefail
cd ${0%/*}

mkdir -p .mvn-repository/

mvn clean package -Dmaven.repo.local=$(pwd)/.mvn-repository

docker build -t sdaschner/maven-jdk14:quarkus-deps-1.5.1-b1 .
