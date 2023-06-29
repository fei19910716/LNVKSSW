
get_filename_component(target ${CMAKE_CURRENT_SOURCE_DIR} NAME)
message(STATUS "starting build: ${target}")

file(GLOB lib_files ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)

add_library(${target} ${lib_files})

target_include_directories(${target} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include/imgui)
target_include_directories(${target} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)