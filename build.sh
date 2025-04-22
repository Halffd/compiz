#!/bin/sh
build() {
  local _cmake_options=(
    -B build
    -S "$_pkgsrc"
    -G Ninja
    -DCMAKE_BUILD_TYPE=None
    -DCMAKE_INSTALL_PREFIX='/usr'
    -DCMAKE_CXX_STANDARD=17
    -DCOMPIZ_DISABLE_SCHEMAS_INSTALL=ON
    -DCOMPIZ_BUILD_WITH_RPATH=OFF
    -DCOMPIZ_PACKAGING_ENABLED=ON
    -DBUILD_GTK=ON
    -DBUILD_METACITY=ON
    -DCOMPIZ_DEFAULT_PLUGINS="composite,opengl,decor,resize,place,move,compiztoolbox,staticswitcher,regex,animation,wall,ccp"
    -DCOMPIZ_BUILD_TESTING=OFF
    -DCOMPIZ_WERROR=OFF
    -Wno-dev
  )

  cmake "${_cmake_options[@]}"
  cmake --clean build
  cmake --build build
}

build $0