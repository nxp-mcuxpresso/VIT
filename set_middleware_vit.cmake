include_guard(GLOBAL)


if (CONFIG_USE_middleware_vit_hifi4_models)
# Add set(CONFIG_USE_middleware_vit_hifi4_models true) in config.cmake to use this component

message("middleware_vit_hifi4_models component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./HIFI4/Lib
)


endif()


if (CONFIG_USE_middleware_vit_fusionf1_models)
# Add set(CONFIG_USE_middleware_vit_fusionf1_models true) in config.cmake to use this component

message("middleware_vit_fusionf1_models component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./FusionF1/Lib
)


endif()


if (CONFIG_USE_middleware_vit_cm7)
# Add set(CONFIG_USE_middleware_vit_cm7 true) in config.cmake to use this component

message("middleware_vit_cm7 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkcmimxrt1060))

if(CONFIG_TOOLCHAIN STREQUAL mcux)
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./CortexM7/Lib
  ${CMAKE_CURRENT_LIST_DIR}/./CortexM7/Lib/Inc
)
endif()

if(CONFIG_TOOLCHAIN STREQUAL mcux)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./CortexM7/Lib/libVIT_CM7_v04_08_01.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_vit_cm7 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

