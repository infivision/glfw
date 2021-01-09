#!/bin/bash
rm -rf build/
INFI_OS=osx
INFI_ARCH=arm

source ./build_project_inc.sh

mkdir -p build/
cd build
/Applications/CMake.app/Contents/bin/cmake -DCMAKE_OSX_ARCHITECTURES="arm64" -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR ../
make
make install
cd ..

mkdir -p ../infistd/lib/osx/arm/
cp -r build/src/libglfw.dylib ../infistd/lib/osx/arm/