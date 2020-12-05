cmake_minimum_required(VERSION 3.13)
project(lite)


file(GLOB_RECURSE lite_SOURCES "src/*.c")

add_executable(lite ${lite_SOURCES})

target_include_directories(lite PRIVATE "src/")

target_link_libraries(lite SDL2 m)

set_target_properties( lite
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/.."
)

target_compile_options(lite PRIVATE -std=gnu11 -O3)
target_compile_definitions(lite PRIVATE LUA_USE_POSIX)