#!/bin/bash

rm -rf classes/norsys

# Compilation sans modules
echo -e "compilation de src/main/Main.java"
javac -classpath lib/calculatrice.jar src/norsys/main/Main.java -d classes

