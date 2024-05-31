kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

variables:
  asio-tag: asio-1-30-2

sources:
- kind: tar
  url: github:chriskohlhoff/asio/archive/refs/tags/%{asio-tag}.tar.gz
  base-dir: "asio-%{asio-tag}/asio"
  ref: 755bd7f85a4b269c67ae0ea254907c078d408cce8e1a352ad2ed664d233780e8
