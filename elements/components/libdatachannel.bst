kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/plog.bst

depends:
- freedesktop-sdk.bst:components/libnice.bst
- freedesktop-sdk.bst:components/libsrtp2.bst
- freedesktop-sdk.bst:components/openssl.bst
- components/usrsctp.bst

variables:
  cmake-local: >-
    -DPREFER_SYSTEM_LIB=ON
    -DUSE_NICE=ON
    -DNO_WEBSOCKET=ON
    -DNO_EXAMPLES=ON
    -DNO_TESTS=ON

sources:
- kind: git_repo
  url: github:paullouisageneau/libdatachannel.git
  track: v0.21.0
  ref: 9d5c46b8f506943727104d766e5dad0693c5a223
