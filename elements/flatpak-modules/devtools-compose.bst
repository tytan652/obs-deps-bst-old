kind: compose
description: Composition to allow only tools used to build OBS Studio

config:
  include:
    - devtools
  exclude:
    - debug
    - devel
    - doc
    - exec-blocklist
    - extra

build-depends:
- obs-deps.bst
