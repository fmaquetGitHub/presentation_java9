#!/bin/bash

#Lancer en java8 (-Xbootclasspath n'est plus reconnue)
echo -e  "\nrun de Main.java"
java -classpath lib/calculatrice.jar:classes norsys.main.Main

echo -e "\nrun de Main.java avec -Xbootclasspath/p "
java -Xbootclasspath/p:lib/calculatrice.jar:classes norsys.main.Main
