project(NNVM)
cmake_minimum_required(VERSION 3.14)

option(BUILD_TEST "Set to complie the test samples" ON)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS_DEBUG
    "${CMAKE_CXX_FLAGS_DEBUG} -Wall -O0 -g -ggdb -std=c++17 -O2 -lm")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -std=c++17 -O2 -lm")

include_directories(.)
file(GLOB_RECURSE CORE_SRC "main.cpp" "*.h" "*.cpp")

message(STATUS "Building core library of NNVM")

add_executable(compiler main.cpp ${CORE_SRC})

set(CMAKE_CXX_STANDARD 17)
