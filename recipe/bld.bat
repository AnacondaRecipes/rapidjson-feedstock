mkdir build
cd build

cmake -G "Ninja" %CMAKE_ARGS% ^
      -D RAPIDJSON_HAS_STDSTRING=ON ^
      -D RAPIDJSON_BUILD_TESTS=OFF ^
      -D RAPIDJSON_BUILD_EXAMPLES=OFF ^
      -D RAPIDJSON_BUILD_DOC=OFF ^
      ..

if errorlevel 1 exit 1

cmake --build . --target install -j%CPU_COUNT%

if errorlevel 1 exit 1
