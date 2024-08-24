#!/usr/bin/bash

cd ../build

qmake QMAKE_CXXFLAGS+=-g ../super-mare/SuperMare/SuperMare.pro > /dev/null
make > /dev/null

cd ../perf

perf record --call-graph dwarf ../build/SuperMare
perf script -i perf.data > perf.folded

cd FlameGraph

./stackcollapse-perf.pl < ../perf.folded > ../perf.collapsed
./flamegraph.pl ../perf.collapsed > ../flamegraph.svg

cd ..

rm perf.folded
rm perf.collapsed
rm perf.data
