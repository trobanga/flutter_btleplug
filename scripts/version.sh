#!/usr/bin/env bash

CURR_VERSION=btleplug-v`awk '/^version: /{print $2}' packages/btleplug/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_btleplug/ios/flutter_btleplug.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_btleplug/macos/flutter_btleplug.podspec
rm packages/flutter_btleplug/macos/*.bak packages/flutter_btleplug/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_btleplug/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_btleplug/$CMAKE_PLATFORM/*.bak
done

git add packages/flutter_btleplug/
