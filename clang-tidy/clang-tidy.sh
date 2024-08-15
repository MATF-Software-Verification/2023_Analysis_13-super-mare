#!/bin/bash

# Define the necessary directories relative to the current directory (clang-tidy)
CURRENT_DIR=$(pwd)
PROJECT_DIR="${CURRENT_DIR}/../super-mare/SuperMare"
BUILD_DIR="${CURRENT_DIR}/../build"
OUTPUT_FILE="${CURRENT_DIR}/clang-tidy-output.txt"

# Run clang-tidy for all .cpp and .h files in the project
find "${PROJECT_DIR}" \( -name "*.cpp" -o -name "*.h" \) -print0 \
  | xargs -0 -n 1 clang-tidy \
      -p "${BUILD_DIR}" \
      --header-filter="${PROJECT_DIR}" \
      -extra-arg=-isystem,/usr/lib/qt6/include \
      -extra-arg=-I"${PROJECT_DIR}" \
      -extra-arg=-I/usr/include/c++/13 \
      -extra-arg=-I/usr/include/x86_64-linux-gnu/c++/13 \
      -checks=*,-clang-analyzer-webkit.RefCntblBaseVirtualDtor \
  > "${OUTPUT_FILE}"

echo "clang-tidy analysis complete. Results saved in ${OUTPUT_FILE}"
