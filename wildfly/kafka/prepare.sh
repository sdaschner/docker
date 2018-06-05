#!/bin/bash
cd ${0%/*}
set -eu

# script to download module dependencies (avoid storing the jar files in VCS)

# kafka
wget http://central.maven.org/maven2/org/lz4/lz4-java/1.4/lz4-java-1.4.jar -O modules/kafka/lz4-java-1.4.jar
wget http://central.maven.org/maven2/org/xerial/snappy/snappy-java/1.1.7.1/snappy-java-1.1.7.1.jar -O modules/kafka/snappy-java-1.1.7.1.jar
wget http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar -O modules/kafka/slf4j-api-1.7.25.jar
