set(CMAKE_CXX_FLAGS_DEBUG
    "${CMAKE_CXX_FLAGS_DEBUG}  -Wall -Wno-unused-variable -O0 -g -fsanitize=address  -fno-omit-frame-pointer -std=c++17 -lm"
)
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -std=c++17 -O2 -lm")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build/test)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build/test)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build/test)

add_executable(testBuilder testBuilder.cpp)
include_directories(../../nnvm)
target_link_libraries(testBuilder PUBLIC NNVM_CORELIB)
