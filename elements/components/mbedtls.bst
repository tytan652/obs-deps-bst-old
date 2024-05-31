kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  mbedtls-version: 3.4.0
  cmake-local: >-
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON
    -DUSE_SHARED_MBEDTLS_LIBRARY=ON
    -DUSE_STATIC_MBEDTLS_LIBRARY=OFF
    -DENABLE_TESTING=OFF
    -DENABLE_PROGRAMS=OFF

config:
  install-commands:
    (>):
    - |
      mkdir -p '%{install-root}%{libdir}/pkgconfig'

      cat <<EOF > '%{install-root}%{libdir}/pkgconfig/mbedcrypto.pc'
      prefix=%{prefix}
      exec_prefix=%{exec_prefix}
      libdir=%{libdir}
      includedir=%{includedir}

      Name: mbedcrypto
      Description: lightweight crypto and SSL/TLS library.
      Version: %{mbedtls-version}
      Libs: -L\${libdir} -lmbedcrypto
      Cflags: -I\${includedir}
      EOF

      cat <<EOF > '%{install-root}%{libdir}/pkgconfig/mbedtls.pc'
      prefix=%{prefix}
      exec_prefix=%{exec_prefix}
      libdir=%{libdir}
      includedir=%{includedir}

      Name: mbedtls
      Description: lightweight crypto and SSL/TLS library.
      Version: %{mbedtls-version}
      Libs: -L\${libdir} -lmbedtls
      Cflags: -I\${includedir}
      Require.private: mbedx509
      EOF

      cat <<EOF > '%{install-root}%{libdir}/pkgconfig/mbedx509.pc'
      prefix=%{prefix}
      exec_prefix=%{exec_prefix}
      libdir=%{libdir}
      includedir=%{includedir}

      Name: mbedx509
      Description: The mbedTLS X.509 library
      Version: %{mbedtls-version}
      Libs: -L\${libdir} -lmbedx509
      Cflags: -I\${includedir}
      Require.private: mbedcrypto
      EOF

sources:
- kind: git_repo
  url: github:Mbed-TLS/mbedtls.git
  track: v%{mbedtls-version}
  ref: 1873d3bfc2da771672bd8e7e8f41f57e0af77f33
