add_executable(wgen ${WGEN_SRC})
target_compile_options(wgen PUBLIC ${TEMP_C_OPT} ${HOST_COMPILER_OPT} ${LOCAL_COMPLER_OPT} ${HOST_C_OPT} ${LOCAL_C_OPT})
target_include_directories(wgen PUBLIC ${HOST_INC_DIR} ${LOCAL_INC_DIR})
target_compile_definitions(wgen PUBLIC ${HOST_DEF} ${LOCAL_DEF})
