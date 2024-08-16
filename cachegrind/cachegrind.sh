#!/usr/bin/bash

cd ../build

qmake CONFIG+=debug ../super-mare/SuperMare/SuperMare.pro > /dev/null
make > /dev/null

cd ../cachegrind

valgrind --tool=cachegrind --log-file="cachegrind-%p-%n.dat" ../build/SuperMare

latest_file=$(ls -t cachegrind.out.* | head -n1)
cg_annotate "$latest_file" > "$latest_file.txt"

# rm -rf ../build

rm $latest_file