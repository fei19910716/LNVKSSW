

set(CMAKE_BUILD_TYPE "Debug")

option(BUILD_ALL_SAMPLES "Build all samples" OFF)
OPTION(USE_D2D_WSI 		"Build the project using Direct to Display swapchain" 	OFF)
OPTION(USE_DIRECTFB_WSI "Build the project using DirectFB swapchain" 			OFF)
OPTION(USE_WAYLAND_WSI 	"Build the project using Wayland swapchain" 			OFF)
OPTION(USE_HEADLESS 	"Build the project using headless extension swapchain" 	OFF)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DVK_USE_PLATFORM_WIN32_KHR")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DNOMINMAX -D_USE_MATH_DEFINES")
# Compiler specific stuff
IF(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHsc")
ENDIF(MSVC)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin/")

add_definitions(-DVK_EXAMPLE_ASSETS_DIR=\"${CMAKE_SOURCE_DIR}/assets/\")
add_definitions(-DVK_EXAMPLE_SHADERS_DIR=\"${CMAKE_SOURCE_DIR}/shaders/\")
add_definitions(-D_CRT_SECURE_NO_WARNINGS)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)