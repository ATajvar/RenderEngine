cmake_minimum_required(VERSION 3.10)

# Set your project name
project(RenderEngine)

# Specify C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the executable
add_executable(${PROJECT_NAME} src/Main.cpp
    src/Buffer/Buffer.cpp
    src/OpenGLWrapper/Graphics.cpp
    src/Shader/Shader.cpp
    src/Texture/Texture.cpp
)

# Include directories for GLFW, GLAD, and stb_image (included in external)
include_directories(
    ${PROJECT_SOURCE_DIR}/external/glad/include
    ${PROJECT_SOURCE_DIR}/external/glfw/3.3.9/include
    ${PROJECT_SOURCE_DIR}/external/stb_image
)

# GLFW (included in external)
# Assuming you're on a system where GLFW's pre-compiled libraries are .dylib (macOS),
# adjust this path if necessary to match your actual GLFW lib directory
find_library(GLFW_LIBRARY NAMES glfw glfw3 PATHS ${PROJECT_SOURCE_DIR}/external/glfw/3.3.9/lib)
if(NOT GLFW_LIBRARY)
    message(FATAL_ERROR "GLFW library not found")
endif()

# GLAD
add_library(glad ${PROJECT_SOURCE_DIR}/external/glad/src/glad.c)
target_include_directories(glad PUBLIC ${PROJECT_SOURCE_DIR}/external/glad/include)

# OpenGL
find_package(OpenGL REQUIRED)

# Link libraries
target_link_libraries(${PROJECT_NAME}
    ${GLFW_LIBRARY}
    glad
    OpenGL::GL
)

# Ensure we have C++17
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_17)

# Google Test integration
enable_testing()
add_subdirectory(external/googletest)
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

# Test executable
add_executable(${PROJECT_NAME}_Test
    src/tests/test_main.cpp
    # Add other test files and source files as needed
)
target_link_libraries(${PROJECT_NAME}_Test gtest gtest_main pthread)

# Add a test to be run with `make test` or `ctest`
add_test(NAME ${PROJECT_NAME}_Test COMMAND ${PROJECT_NAME}_Test)
