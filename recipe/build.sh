#!/bin/env bash

mkdir build
cd build

cmake -G "Ninja" ${CMAKE_ARGS} \
      -DRAPIDJSON_HAS_STDSTRING=ON \
      -DRAPIDJSON_BUILD_TESTS=OFF \
      -DRAPIDJSON_BUILD_EXAMPLES=OFF \
      -DRAPIDJSON_BUILD_DOC=OFF \
      ..

cmake --build . --target install -j${CPU_COUNT}
