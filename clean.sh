#!/usr/bin/bash

set -xe

rm -rf ../build

rm -f ../cachegrind/cachegrind-*.dat
rm -f ../cachegrind/cachegrind.out.*
rm -f ../cachegrind/*.txt

rm -f ../perf/perf.folded
rm -f ../perf/perf.collapsed
rm -f ../perf/perf.data