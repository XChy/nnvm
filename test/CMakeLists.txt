set(CMAKE_C_COMPILER riscv64-linux-gnu-gcc)
add_library(sylib Runtime/sylib.h Runtime/sylib.c)

add_subdirectory(IR)
add_subdirectory(Analysis)
