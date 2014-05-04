INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_DEMOD demod)

FIND_PATH(
    DEMOD_INCLUDE_DIRS
    NAMES demod/api.h
    HINTS $ENV{DEMOD_DIR}/include
        ${PC_DEMOD_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREEFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    DEMOD_LIBRARIES
    NAMES gnuradio-demod
    HINTS $ENV{DEMOD_DIR}/lib
        ${PC_DEMOD_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(DEMOD DEFAULT_MSG DEMOD_LIBRARIES DEMOD_INCLUDE_DIRS)
MARK_AS_ADVANCED(DEMOD_LIBRARIES DEMOD_INCLUDE_DIRS)

