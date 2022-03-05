cmake_minimum_required(VERSION 3.10)
project(bare_test C ASM)

add_compile_options("-fPIC")
add_library(bare_test_lib SHARED
        lib.s
        bare.c) # CMake cannot build library with only asm files

add_executable(bare_test bare_test.c outward.s)
target_link_libraries(bare_test bare_test_lib)
