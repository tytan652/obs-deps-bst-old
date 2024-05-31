kind: collect_manifest
description: Generate a JSON file to list sources used to build obs-deps

build-depends:
- obs-deps.bst

config:
  path: "/app/obs-deps.json"
