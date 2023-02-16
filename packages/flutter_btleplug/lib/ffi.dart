import 'package:btleplug/btleplug.dart';
import 'ffi/stub.dart'
    if (dart.library.io) 'ffi/io.dart'
    if (dart.library.html) 'ffi/web.dart';

Btleplug createLib() => createWrapper(createLibraryImpl());

final btl = createLib();
