cmake_minimum_required(VERSION 3.10)
project(asm_tests C ASM)

add_compile_options("-fPIC")
add_library(bare_test_lib SHARED bare_test/lib.s
        bare_test/bare.c) # CMake cannot build library with only asm files

add_executable(bare_test bare_test/bare_test.c bare_test/outward.s)
target_link_libraries(bare_test bare_test_lib)

add_executable(ftrace ftrace/ftrace.c)
