vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NYU-Processor-Design/nyu-cmake
  REF 1a35166fa3ab162d388862798485ff5f782a6c3c
  SHA512 334d0b457b6b2803d52ba10a519007c242e61f4a6e9453309283f6cce8c3e310af980b36e1632b600abd4d6262aa9a529d471ac61a48d3cd236e41598f99190b
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
file(
  INSTALL ${CMAKE_CURRENT_LIST_DIR}/usage
  DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT}
)

set(VCPKG_POLICY_EMPTY_INCLUDE_FOLDER enabled)
