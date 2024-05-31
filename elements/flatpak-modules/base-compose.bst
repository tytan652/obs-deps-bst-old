kind: compose
description: Composition to allow only shared libraries and debug symbols

config:
  exclude:
    - devel
    - devtools
    - doc
    - exec-blocklist
    - extra

build-depends:
- manifest.bst
