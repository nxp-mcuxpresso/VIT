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


if (CONFIG_USE_middleware_vit_hifi4)
# Add set(CONFIG_USE_middleware_vit_hifi4 true) in config.cmake to use this component

message("middleware_vit_hifi4 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_vit_hifi4_models AND (CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL mimxrt685audevk))

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./HIFI4/Lib
  ${CMAKE_CURRENT_LIST_DIR}/./HIFI4/Lib/Inc
)

if(CONFIG_TOOLCHAIN STREQUAL xcc)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./HIFI4/Lib/libVIT_HIFI4_v04_08_01.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_vit_hifi4 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_vit_fusionf1)
# Add set(CONFIG_USE_middleware_vit_fusionf1 true) in config.cmake to use this component

message("middleware_vit_fusionf1 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_vit_fusionf1_models AND (CONFIG_BOARD STREQUAL evkmimxrt595))

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./FusionF1/Lib
  ${CMAKE_CURRENT_LIST_DIR}/./FusionF1/Lib/Inc
)

if(CONFIG_TOOLCHAIN STREQUAL xcc)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./FusionF1/Lib/libVIT_Fusion_F1_v04_08_01.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_vit_fusionf1 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_vit_cm7)
# Add set(CONFIG_USE_middleware_vit_cm7 true) in config.cmake to use this component

message("middleware_vit_cm7 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt1040 OR CONFIG_BOARD STREQUAL evkbimxrt1050 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkbmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1064 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170))

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


if (CONFIG_USE_middleware_vit_cm33)
# Add set(CONFIG_USE_middleware_vit_cm33 true) in config.cmake to use this component

message("middleware_vit_cm33 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL lpcxpresso55s69))

if(CONFIG_TOOLCHAIN STREQUAL mcux)
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./CortexM33-LPC55S69/Lib
  ${CMAKE_CURRENT_LIST_DIR}/./CortexM33-LPC55S69/Lib/Inc
)
endif()

if(CONFIG_TOOLCHAIN STREQUAL mcux)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./CortexM33-LPC55S69/Lib/libVIT_CM33_LPC55S69_v04_08_01.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_vit_cm33 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

