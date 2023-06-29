
get_filename_component(target ${CMAKE_CURRENT_SOURCE_DIR} NAME)
message(STATUS "starting build: ${target}")

file(GLOB lib_files ${CMAKE_CURRENT_SOURCE_DIR}/src/*.*)

add_library(${target} ${lib_files})

target_link_libraries(${target} PUBLIC vulkan)
target_include_directories(${target} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)