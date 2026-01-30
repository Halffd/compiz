#!/bin/sh
build() {
  local _cmake_options=(
    -B build
    -G Ninja
    -DCMAKE_BUILD_TYPE=None
    -DCMAKE_INSTALL_PREFIX='/usr'
    -DCMAKE_CXX_STANDARD=17
    -DCOMPIZ_DISABLE_SCHEMAS_INSTALL=ON
    -DCOMPIZ_BUILD_WITH_RPATH=OFF
    -DCOMPIZ_PACKAGING_ENABLED=ON
    -DBUILD_GTK=ON
    -DBUILD_METACITY=ON
    -DCOMPIZ_DEFAULT_PLUGINS="addhelper,annotate,animation,animationaddon,animationjc,animationplus,bench,bicubic,blur,ccp,clone,colorfilter,commands,compiztoolbox,composite,copytex,crashhandler,cube,cubeaddon,dbus,decor,expo,extrawm,ezoom,fade,fadedesktop,firepaint,freewins,gears,gnomecompat,grid,group,imgjpeg,imgpng,imgsvg,inotify,loginout,mag,matecompat,maximumize,mblur,mousepoll,move,neg,notification,obs,opacify,opengl,place,put,reflex,regex,resize,resizeinfo,ring,rotate,scale,scaleaddon,scalefilter,screenshot,session,shelf,shift,showdesktop,showmouse,showrepaint,simple-animations,snap,splash,stackswitch,staticswitcher,switcher,td,text,thumbnail,titleinfo,trailfocus,trip,vpswitch,wall,wallpaper,water,widget,winrules,wizard,wobbly,workarounds,workspacenames"
    -DCOMPIZ_BUILD_TESTING=OFF
    -DCOMPIZ_WERROR=OFF
    -Wno-dev
  )

  cmake . "${_cmake_options[@]}"
  cmake --build build
}

build $0
