# Install script for directory: /home/half-arch/repos/compiz/compizconfig/gsettings

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/half-arch/repos/compiz/build/compizconfig/gsettings/mocks/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/half-arch/repos/compiz/build/compizconfig/gsettings/gsettings_backend_shared/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/compizconfig/backends/libgsettings.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/compizconfig/backends/libgsettings.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/lib/compizconfig/backends/libgsettings.so"
         RPATH "/usr/local/lib")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/compizconfig/backends/libgsettings.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib/compizconfig/backends" TYPE SHARED_LIBRARY FILES "/home/half-arch/repos/compiz/build/compizconfig/gsettings/libgsettings.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/compizconfig/backends/libgsettings.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/compizconfig/backends/libgsettings.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/lib/compizconfig/backends/libgsettings.so"
         OLD_RPATH "/home/half-arch/repos/compiz/build/compizconfig/libcompizconfig:/home/half-arch/repos/compiz/build/compizconfig/gsettings/gsettings_backend_shared:/home/half-arch/repos/compiz/build/compizconfig/libcompizconfig/src:"
         NEW_RPATH "/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/compizconfig/backends/libgsettings.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/half-arch/repos/compiz/build/compizconfig/gsettings/CMakeFiles/gsettings.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
		 execute_process (COMMAND cmake -DFILE=/home/half-arch/repos/compiz/build/generated/glib-2.0/schemas/org.compiz.gschema.xml
                                                -DINSTALLDIR_USER=/usr/local/share/glib-2.0/schemas/ 
                                                -DINSTALLDIR_ROOT=/usr/share/glib-2.0/schemas 
                                                -P /home/half-arch/repos/compiz/cmake/copy_file_install_user_env.cmake)
		 
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/half-arch/repos/compiz/build/compizconfig/gsettings/tests/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/half-arch/repos/compiz/build/compizconfig/gsettings/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
