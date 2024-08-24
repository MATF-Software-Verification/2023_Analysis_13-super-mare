#!/usr/bin/bash

cd ../build

qmake ../super-mare/SuperMare/SuperMare.pro > /dev/null
make > /dev/null

cd ../memcheck

valgrind --tool=memcheck --leak-check=full --show-leak-kinds=all --log-file="$(date +%s).memcheck.out" ../build/SuperMare

# rm -rf ../build