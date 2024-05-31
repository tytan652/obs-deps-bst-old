kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

variables:
  cmake-local: >-
    -DENABLE_CPP11=ON
    -DBUILD_EXAMPLES=OFF
    -DBUILD_TESTS=OFF

sources:
- kind: git_repo
  url: github:zaphoyd/websocketpp.git
  track: 0.8.2
  ref: 56123c87598f8b1dd471be83ca841ceae07f95ba
