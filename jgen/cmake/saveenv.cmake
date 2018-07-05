add_library(jgen_util_o ${WGENUTILO_SRC})
target_compile_options(jgen_util_o PUBLIC ${TEMP_C_OPT} ${HOST_COMPILER_OPT} ${LOCAL_COMPLER_OPT} ${HOST_C_OPT} ${LOCAL_C_OPT})
target_include_directories(jgen_util_o PUBLIC ${LOCAL_INC_DIR} ${HOST_INC_DIR})
target_compile_definitions(jgen_util_o PRIVATE ${HOST_DEF} ${LOCAL_DEF} -DMONGOOSE_BE)

if(DEBUG_CMAKE)
message(STATUS "JGEN_SRCS: " ${JGEN_SRCS})
message(STATUS "adding j2wgen src:" ${J2WGEN_SRC})
endif()

add_executable(jgen ${J2WGEN_SRC})
target_compile_options(jgen PUBLIC ${TEMP_C_OPT} ${HOST_COMPILER_OPT} ${LOCAL_COMPLER_OPT} ${HOST_C_OPT} ${LOCAL_C_OPT})
target_include_directories(jgen PUBLIC ${LOCAL_INC_DIR} ${HOST_INC_DIR})
target_compile_definitions(jgen PUBLIC ${HOST_DEF} ${LOCAL_DEF})
target_link_libraries(jgen comutils jgen_util_o)


add_executable(jwtest ${JREAD_SRC})
target_compile_options(jwtest PUBLIC ${TEMP_C_OPT} ${HOST_COMPILER_OPT} ${LOCAL_COMPLER_OPT} ${HOST_C_OPT} ${LOCAL_C_OPT})
target_include_directories(jwtest PUBLIC ${LOCAL_INC_DIR} ${HOST_INC_DIR})
target_compile_definitions(jwtest PUBLIC ${HOST_DEF} ${LOCAL_DEF})
target_link_libraries(jwtest comutils jgen_util_o)