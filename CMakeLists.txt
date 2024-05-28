project(NNVM)
cmake_minimum_required(VERSION 3.9)

option(BUILD_TEST "Set to complie the test samples" ON)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

# Output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build)

include_directories(antlr-runtime)
include_directories(nnvm)

file(GLOB_RECURSE ANTLR4_RUNTIME_SRC antlr-runtime/*.cpp)
add_library(ANTLR4_RUNTIME_LIB SHARED ${ANTLR4_RUNTIME_SRC})

add_subdirectory(./nnvm)
add_subdirectory(./test)

if(BUILD_TEST)

endif()

set(CMAKE_CXX_STANDARD 17)
