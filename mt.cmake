set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded" CACHE STRING "" FORCE)

# Safety: strip any accidental /MD flags
foreach(lang C CXX)
    foreach(cfg DEBUG RELEASE RELWITHDEBINFO MINSIZEREL)
        string(REPLACE "/MD" "" CMAKE_${lang}_FLAGS_${cfg} "${CMAKE_${lang}_FLAGS_${cfg}}")
        string(REPLACE "/MDd" "" CMAKE_${lang}_FLAGS_${cfg} "${CMAKE_${lang}_FLAGS_${cfg}}")
    endforeach()
endforeach()
