if(CMAKE_BUILD_TYPE STREQUAL Release)
    message(STATUS "Release Build")
else()
    message(STATUS "Debug Build")
    add_definitions(-DCOMPILER_DEBUG)
endif()

set(CMAKE_CXX_FLAGS_DEBUG
    "${CMAKE_CXX_FLAGS_DEBUG} -Wall -O0 -g -ggdb -std=c++17 -O0 -lm")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -std=c++17 -O2 -lm")

include_directories(.)
include_directories(../antlr-runtime)
file(GLOB_RECURSE CORE_SRC "main.cpp" "*.h" "*.cpp")

message(STATUS "Building core library of nnvm")

add_executable(compiler main.cpp ${CORE_SRC})
target_link_libraries(compiler PUBLIC ANTLR4_RUNTIME_LIB)

set(CMAKE_CXX_STANDARD 17)
