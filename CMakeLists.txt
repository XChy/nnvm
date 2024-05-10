project(NNVM)
cmake_minimum_required(VERSION 3.9)

option(BUILD_TEST "Set to complie the test samples" ON)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS_DEBUG
    "${CMAKE_CXX_FLAGS_DEBUG} -Wall -Wno-unused-variable -O0 -g -fsanitize=address -fno-omit-frame-pointer -std=c++17"
)

set(CMAKE_CXX_FLAGS_RELEASE
    "${CMAKE_CXX_FLAGS_RELEASE} -std=c++17 -O2")

# Output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build)

include_directories(antlr-runtime)
file(GLOB_RECURSE ANTLR4_RUNTIME_SRC antlr-runtime/*.cpp)
add_library(ANTLR4_RUNTIME_LIB SHARED ${ANTLR4_RUNTIME_SRC})

add_subdirectory(./nnvm)

if(BUILD_TEST)

endif()

set(CMAKE_CXX_STANDARD 17)
