#!/bin/bash
rm -rf build/
INFI_OS=linux
INFI_ARCH=x86

source ./build_project_inc.sh
mkdir -p ../infistd/lib/$INFI_OS/$INFI_ARCH/
mkdir -p build/
cd build
cmake -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR ../
make
make install
cd ..

