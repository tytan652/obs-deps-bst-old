kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  mbedtls-version: 3.4.0
  cmake-local: >-
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON
    -DUSE_SHARED_MBEDTLS_LIBRARY=ON
    -DUSE_STATIC_MBEDTLS_LIBRARY=OFF
    -DENABLE_TESTING=OFF
    -DENABLE_PROGRAMS=OFF

sources:
- kind: git_repo
  url: github:Mbed-TLS/mbedtls.git
  track: v%{mbedtls-version}
  ref: 1873d3bfc2da771672bd8e7e8f41f57e0af77f33
