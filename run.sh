#!/bin/bash

clear
rm -rf build
mkdir -p build/classes

javac -cp "lib/*" -d build/classes $(find . -name "*.java")

if [ $? -ne 0 ]; then
    echo "erreur de compilation"
    exit 1
fi

jar cf framework.jar -C build/classes .
