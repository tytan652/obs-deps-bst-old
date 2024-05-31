kind: stack
description: Enable QSV (Intel) dependencies depending on the targeted arch

(?):
- target_arch == "x86_64":
    depends:
      - components/libvpl.bst
