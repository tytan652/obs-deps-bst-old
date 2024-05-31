kind: filter
description: Filter to generate the devel tarball with only /app

config:
  include:
  - app

build-depends:
- flatpak-modules/devel-compose.bst
