#!/bin/bash

rm -rf modules/*

# Compilation .java un à un de org.common
echo -e "compilation du module org.common "
javac src/org.common/module-info.java src/org.common/common/math/Calculatrice.java \
      -d modules/org.common


echo -e "\ncompilation du module com.norsys"
javac --module-path modules \
      src/com.norsys/module-info.java src/com.norsys/norsys/main/Main.java \
      -d modules/com.norsys
      
echo -e "\ncompilation de tous les modules"
javac --module-source-path src $(find src -name "*.java") -d modules
