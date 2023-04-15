# Flutter BtlePlug

A cross-platform Flutter Bluetooth plugin, based on [btleplug](https://github.com/deviceplug/btleplug).

**This is a work in progress, do not use in production (yet)**

## Setup
The project uses [Melos](https://melos.invertase.dev/) to build the package.
`dart pub global activate melos`

## Getting Started
To build locally for Android run:
`melos run build:android-dev`

This will build the library and copy all necessary files to android/src/main/jniLibs.

Then run `cd example && flutter run`.

In case you get errors such as:
```sh
../../btleplug/lib/src/bridge_generated.dart:92:43: Error: The method 'wire_init' isn't defined for the class 'BtleplugWire'.
 - 'BtleplugWire' is from 'package:btleplug/src/bridge_generated.io.dart' ('../../btleplug/lib/src/bridge_generated.io.dart').
Try correcting the name to the name of an existing method, or defining a method named 'wire_init'.
      callFfi: (port_) => _platform.inner.wire_init(port_)
```
rebuild with `melos run build:android-dev-from-scratch`. 
Repeat until it works  ¯\_ (ツ)_/¯ 

### Contributors
The package is in early development, if you want to help open an issue and we'll figure it out.
