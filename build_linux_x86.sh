#!/bin/bash
INFI_OS=linux
INFI_ARCH=x86

build_type=release
build_dist_dir=bin

source ./build_project_inc.sh
mkdir -p ../infistd/lib/$INFI_OS/$INFI_ARCH/$build_type
mkdir -p build_release/
cd build_release
cmake -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR -DCMAKE_BUILD_TYPE=$build_type ../
make
make install
cd ..

build_type=debug
build_dist_dir=debug
source ./build_project_inc.sh
mkdir -p ../infistd/lib/$INFI_OS/$INFI_ARCH/$build_type
mkdir -p build_debug/
cd build_debug
cmake -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR -DCMAKE_BUILD_TYPE=$build_type ../
make
make install
cd ..



