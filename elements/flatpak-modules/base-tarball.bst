kind: filter
description: Filter to generate the base tarball with only /app

config:
  include:
  - app

build-depends:
- flatpak-modules/base-compose.bst
