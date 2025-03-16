# Install script for directory: /home/half-arch/repos/compiz/include/core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/compiz/core/action.h;/usr/local/include/compiz/core/atoms.h;/usr/local/include/compiz/core/configurerequestbuffer.h;/usr/local/include/compiz/core/core.h;/usr/local/include/compiz/core/countedlist.h;/usr/local/include/compiz/core/global.h;/usr/local/include/compiz/core/icon.h;/usr/local/include/compiz/core/logmessage.h;/usr/local/include/compiz/core/match.h;/usr/local/include/compiz/core/modifierhandler.h;/usr/local/include/compiz/core/option.h;/usr/local/include/compiz/core/output.h;/usr/local/include/compiz/core/plugin.h;/usr/local/include/compiz/core/propertywriter.h;/usr/local/include/compiz/core/privateunion.h;/usr/local/include/compiz/core/screen.h;/usr/local/include/compiz/core/session.h;/usr/local/include/compiz/core/size.h;/usr/local/include/compiz/core/string.h;/usr/local/include/compiz/core/templates.h;/usr/local/include/compiz/core/window.h;/usr/local/include/compiz/core/wrapsystem.h;/usr/local/include/compiz/core/abiversion.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include/compiz/core" TYPE FILE FILES
    "/home/half-arch/repos/compiz/include/core/action.h"
    "/home/half-arch/repos/compiz/include/core/atoms.h"
    "/home/half-arch/repos/compiz/include/core/configurerequestbuffer.h"
    "/home/half-arch/repos/compiz/include/core/core.h"
    "/home/half-arch/repos/compiz/include/core/countedlist.h"
    "/home/half-arch/repos/compiz/include/core/global.h"
    "/home/half-arch/repos/compiz/include/core/icon.h"
    "/home/half-arch/repos/compiz/include/core/logmessage.h"
    "/home/half-arch/repos/compiz/include/core/match.h"
    "/home/half-arch/repos/compiz/include/core/modifierhandler.h"
    "/home/half-arch/repos/compiz/include/core/option.h"
    "/home/half-arch/repos/compiz/include/core/output.h"
    "/home/half-arch/repos/compiz/include/core/plugin.h"
    "/home/half-arch/repos/compiz/include/core/propertywriter.h"
    "/home/half-arch/repos/compiz/include/core/privateunion.h"
    "/home/half-arch/repos/compiz/include/core/screen.h"
    "/home/half-arch/repos/compiz/include/core/session.h"
    "/home/half-arch/repos/compiz/include/core/size.h"
    "/home/half-arch/repos/compiz/include/core/string.h"
    "/home/half-arch/repos/compiz/include/core/templates.h"
    "/home/half-arch/repos/compiz/include/core/window.h"
    "/home/half-arch/repos/compiz/include/core/wrapsystem.h"
    "/home/half-arch/repos/compiz/include/core/abiversion.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/half-arch/repos/compiz/build/include/core/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
