kind: compose
description: Composition to allow only headers, pkg-config files and CMake packages

config:
  exclude:
    - debug
    - devtools
    - doc
    - exec-blocklist
    - extra
    - runtime

build-depends:
- obs-deps.bst
