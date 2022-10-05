#!/bin/bash
set -e

echo "Start Execution"

echo "Start Build"
mvn clean install -DskipTests
if [[ "$?" -ne 0 ]] ; then
  echo "Build Failed";
  exit 1
else
  mvn test -Dtest=MainTest
fi
