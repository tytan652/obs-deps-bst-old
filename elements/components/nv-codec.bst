kind: make

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  make-args: >-
    PREFIX="%{prefix}"
    LIBDIR="%{lib}"

sources:
- kind: git_repo
  url: github:ffmpeg/nv-codec-headers.git
  track: n12.1.14.0
  ref: 1889e62e2d35ff7aa9baca2bceb14f053785e6f1
