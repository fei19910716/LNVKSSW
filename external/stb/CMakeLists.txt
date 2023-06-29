
get_filename_component(target ${CMAKE_CURRENT_SOURCE_DIR} NAME)
message(STATUS "starting build: ${target}")

add_library(${target} INTERFACE)

target_include_directories(${target} INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include)