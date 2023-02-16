import 'dart:ffi';

import 'package:btleplug/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

Btleplug createWrapperImpl(ExternalLibrary dylib) => BtleplugImpl(dylib);
