set(CMAKE_C_COMPILER riscv64-unknown-linux-gnu-gcc)
add_library(sylib Runtime/sylib.h Runtime/sylib.c)

add_subdirectory(IR)
