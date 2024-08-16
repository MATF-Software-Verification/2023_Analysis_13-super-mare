#!/usr/bin/bash

set -xe

mkdir -p build && cd build

qmake CONFIG+=debug ../super-mare/SuperMare/SuperMare.pro > /dev/null

bear -- make > /dev/null