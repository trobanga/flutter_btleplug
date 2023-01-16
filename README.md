# Flutter BtlePlug

A cross-platform Flutter Bluetooth plugin, based on [btleplug](https://github.com/deviceplug/btleplug).

**This is a work in progress, do not use in production (yet)**

## Progress

Currently only Android works, however the goal is to support all platforms that btleplug supports. 

## Getting Started
To run the example code, git clone this repo and run `flutter run` in the `example` folder.

## For Developers
To get started developing this plugin, there are a few different steps depending on what platform you want to work on.

### General Setup
1. Install `rust`, anything current is fine.
1. Install `cargo make` with `cargo install cargo-make`.
1. Install `just` from https://github.com/casey/just
1. Run `just gen` to generate the Rust to Dart bridge bindings.

### Build Android
1. Ensure you have the `NDK (side by side)` package installed in the Android Studio SDK manager.
1. Make sure the `ANDROID_NDK_HOME` variable in the `.env` file is pointing to your NDK install.
1. Run `just build-android`.

### Build iOS
WIP, can you help?

### Build MacOS
WIP, can you help?

### Build Windows
WIP, can you help?
