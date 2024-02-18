cmake_minimum_required(VERSION 3.28)

project(
    passionfruit
    VERSION 0.1.0
    DESCRIPTION "A short description"
    LANGUAGES CXX
)

if(BUILD_TESTING)
    enable_testing()
endif()


function(message)
    if (NOT MESSAGE_QUIET)
        _message(${ARGN})
    endif()
endfunction()

add_subdirectory(adizzle)
add_subdirectory(admat)
add_subdirectory(seed)
add_subdirectory(echidna)
add_subdirectory(razor)