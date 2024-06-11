kind: junction

sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: release/23.08
  track-tags: True
  ref: freedesktop-sdk-23.08.20-0-g340e8727a724faa0a29a2ab1c452e6a9cb2e7617
- kind: create_custom_fdo_sdk_include_ffmpeg

config:
  options:
    target_arch: '%{target_arch}'
    bootstrap_build_arch: '%{target_arch}'
