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


if (CONFIG_USE_middleware_vit_cm33-rw61x)
# Add set(CONFIG_USE_middleware_vit_cm33-rw61x true) in config.cmake to use this component

message("middleware_vit_cm33-rw61x component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL rdrw612bga))

if(CONFIG_TOOLCHAIN STREQUAL mcux)
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./CortexM33-RW61x/Lib
  ${CMAKE_CURRENT_LIST_DIR}/./CortexM33-RW61x/Lib/Inc
)
endif()

if(CONFIG_TOOLCHAIN STREQUAL mcux)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./CortexM33-RW61x/Lib/libVIT_CM33_RW61x_v04_09_00.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_vit_cm33-rw61x dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

