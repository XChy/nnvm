if(CMAKE_BUILD_TYPE STREQUAL Release)
  message(STATUS "Release Build")
else()
  message(STATUS "Debug Build")
  add_definitions(-DCOMPILER_DEBUG)
endif()

set(CMAKE_CXX_FLAGS_DEBUG
    "${CMAKE_CXX_FLAGS_DEBUG}  -Wall -Wno-unused-variable -rdynamic -O0 -g -ggdb -fsanitize=address -fno-omit-frame-pointer -std=c++17 -lm"
)
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -std=c++17 -O2 -lm")

include_directories(.)
include_directories(../antlr-runtime)
file(GLOB_RECURSE CORE_SRC "main.cpp" "*.h" "*.cpp")

message(STATUS "Building core library of nnvm")

add_library(NNVM_CORELIB STATIC ${CORE_SRC})
add_executable(compiler main.cpp)
target_link_libraries(compiler PUBLIC NNVM_CORELIB)

target_link_libraries(compiler PUBLIC ANTLR4_RUNTIME_LIB)

set(CMAKE_CXX_STANDARD 17)
