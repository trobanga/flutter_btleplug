#!/usr/bin/env bash

# Setup
BUILD_DIR=platform-build
mkdir $BUILD_DIR
cd $BUILD_DIR

# Create the jniLibs build directory
JNI_DIR=jniLibs
mkdir -p $JNI_DIR

# Set up cargo-ndk
cargo install cargo-ndk
rustup target add \
        aarch64-linux-android

# Build the android libraries in the jniLibs directory
cargo ndk -o $JNI_DIR \
        --manifest-path ../Cargo.toml \
        -t arm64-v8a \
        build --release

# Archive the dynamic libs
cd $JNI_DIR
tar -czvf ../android.tar.gz *
cd -

# Cleanup
rm -rf $JNI_DIR

cd ..

export CURR_VERSION=btleplug-v`awk '/^version: /{print $2}' packages/btleplug/pubspec.yaml`
cp platform-build/android.tar.gz packages/flutter_btleplug/android/$CURR_VERSION.tar.gz
tar xzf platform-build/android.tar.gz -C packages/flutter_btleplug/android/src/main/jniLibs
