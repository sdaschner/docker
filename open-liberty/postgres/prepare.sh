#!/bin/bash
cd ${0%/*}
set -eu

# avoid storing the jar files in VCS

wget http://central.maven.org/maven2/org/postgresql/postgresql/9.4.1212/postgresql-9.4.1212.jar -O postgresql-9.4.1212.jar
