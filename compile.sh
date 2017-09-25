#!/bin/bash

rm -rf modules/*

# Compilation .java un à un
echo -e "compilation de src/main/Main.java (avec le module-info)"
javac src/com.norsys/module-info.java src/com.norsys/norsys/main/Main.java -d modules/com.norsys

echo -e "\ncompilation de src/main/Main.java (avec le module-info)"
# Compilation de tous les .java
javac $(find src -name "*.java")  -d  modules/com.norsys
