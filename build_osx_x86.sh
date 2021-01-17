#!/bin/bash

#!/bin/bash
rm -rf build/
INFI_OS=osx
INFI_ARCH=x86

source ./build_project_inc.sh

mkdir -p build/
cd build
/Applications/CMake.app/Contents/bin/cmake -DCMAKE_OSX_ARCHITECTURES="x86_64" -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR ../
make
make install
cd ..

