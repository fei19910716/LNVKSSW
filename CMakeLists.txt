cmake_minimum_required(VERSION 3.4 FATAL_ERROR)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")

set(NAME vulkanExamples)

project(${NAME})

include(settings)
include(utils)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})


add_subdirectory(external)
add_subdirectory(base)
add_subdirectory(examples)
