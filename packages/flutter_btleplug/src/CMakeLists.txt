# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_btleplug_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_btleplug SHARED
  "flutter_btleplug.c"
)

set_target_properties(flutter_btleplug PROPERTIES
  PUBLIC_HEADER flutter_btleplug.h
  OUTPUT_NAME "flutter_btleplug"
)

target_compile_definitions(flutter_btleplug PUBLIC DART_SHARED_LIB)
