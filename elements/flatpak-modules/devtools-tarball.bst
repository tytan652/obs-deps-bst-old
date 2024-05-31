kind: filter
description: Filter to generate the devtools tarball with only /app

config:
  include:
  - app

build-depends:
- flatpak-modules/devtools-compose.bst
