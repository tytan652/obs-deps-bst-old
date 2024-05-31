kind: junction

sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: release/23.08
  track-tags: True
  ref: freedesktop-sdk-23.08.19-0-gc4a135e4a4dd8fb0d0e0c402a1a4d1a7a39d84b6

config:
  options:
    target_arch: '%{target_arch}'
    bootstrap_build_arch: '%{target_arch}'
