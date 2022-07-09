########################################################################
# Copyright (c) 1988-2022 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: unadir.pri
#
# Author: $author$
#   Date: 3/28/2022
#
# os specific QtCreator project .pri file for framework unadir
########################################################################
# Repository Depends: vmachinae
# Depends: urostra;ufila;ucrono

UNAME = $$system(uname)

contains(UNAME,Darwin) {
UNADIR_OS = macosx
} else {
contains(UNAME,Linux) {
UNADIR_OS = linux
} else {
UNADIR_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,UNADIR_OS) {
UNADIR_BUILD = $${UNADIR_OS}
} else {
UNADIR_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,UNADIR_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(UNADIR_OS,macosx) {
} else {
contains(UNADIR_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(UNADIR_OS,windows) {
} else {
} # contains(UNADIR_OS,windows)
} # contains(UNADIR_OS,linux)
} # contains(UNADIR_OS,macosx)

########################################################################
# urostra
UROSTRA_THIRDPARTY_PKG_MAKE_BLD = $${UROSTRA_THIRDPARTY_PKG}/build/$${UNADIR_BUILD}/$${BUILD_CONFIG}
UROSTRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UROSTRA_THIRDPARTY_PRJ}/build/$${UNADIR_BUILD}/$${BUILD_CONFIG}
UROSTRA_THIRDPARTY_PKG_BLD = $${UROSTRA_THIRDPARTY_PKG}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
UROSTRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UROSTRA_THIRDPARTY_PRJ}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
UROSTRA_PKG_BLD = $${OTHER_BLD}/$${UROSTRA_PKG}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
UROSTRA_PRJ_BLD = $${OTHER_BLD}/$${UROSTRA_PRJ}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PKG_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PRJ_BLD}/lib
UROSTRA_LIB = $${UROSTRA_PKG_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_PRJ_BLD}/lib
#UROSTRA_LIB = $${UNADIR_LIB}
UROSTRA_LIB_NAME = $${UROSTRA_NAME}

# urostra LIBS
#
urostra_LIBS += \
-L$${UROSTRA_LIB}/lib$${UROSTRA_LIB_NAME} \
-l$${UROSTRA_LIB_NAME} \


########################################################################
# ufila
UFILA_THIRDPARTY_PKG_MAKE_BLD = $${UFILA_THIRDPARTY_PKG}/build/$${UNADIR_BUILD}/$${BUILD_CONFIG}
UFILA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UFILA_THIRDPARTY_PRJ}/build/$${UNADIR_BUILD}/$${BUILD_CONFIG}
UFILA_THIRDPARTY_PKG_BLD = $${UFILA_THIRDPARTY_PKG}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
UFILA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UFILA_THIRDPARTY_PRJ}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
UFILA_PKG_BLD = $${OTHER_BLD}/$${UFILA_PKG}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
UFILA_PRJ_BLD = $${OTHER_BLD}/$${UFILA_PRJ}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
#UFILA_LIB = $${UFILA_THIRDPARTY_PKG_MAKE_BLD}/lib
#UFILA_LIB = $${UFILA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UFILA_LIB = $${UFILA_THIRDPARTY_PKG_BLD}/lib
#UFILA_LIB = $${UFILA_THIRDPARTY_PRJ_BLD}/lib
UFILA_LIB = $${UFILA_PKG_BLD}/lib
#UFILA_LIB = $${UFILA_PRJ_BLD}/lib
#UFILA_LIB = $${UNADIR_LIB}
UFILA_LIB_NAME = $${UFILA_NAME}

# ufila LIBS
#
ufila_LIBS += \
-L$${UFILA_LIB}/lib$${UFILA_LIB_NAME} \
-l$${UFILA_LIB_NAME} \


########################################################################
# ucrono
UCRONO_THIRDPARTY_PKG_MAKE_BLD = $${UCRONO_THIRDPARTY_PKG}/build/$${UNADIR_BUILD}/$${BUILD_CONFIG}
UCRONO_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UCRONO_THIRDPARTY_PRJ}/build/$${UNADIR_BUILD}/$${BUILD_CONFIG}
UCRONO_THIRDPARTY_PKG_BLD = $${UCRONO_THIRDPARTY_PKG}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
UCRONO_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UCRONO_THIRDPARTY_PRJ}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
UCRONO_PKG_BLD = $${OTHER_BLD}/$${UCRONO_PKG}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
UCRONO_PRJ_BLD = $${OTHER_BLD}/$${UCRONO_PRJ}/build/$${UNADIR_BUILD}/QtCreator/$${BUILD_CONFIG}
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PKG_MAKE_BLD}/lib
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PKG_BLD}/lib
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PRJ_BLD}/lib
UCRONO_LIB = $${UCRONO_PKG_BLD}/lib
#UCRONO_LIB = $${UCRONO_PRJ_BLD}/lib
#UCRONO_LIB = $${UNADIR_LIB}
UCRONO_LIB_NAME = $${UCRONO_NAME}

# ucrono LIBS
#
ucrono_LIBS += \
-L$${UCRONO_LIB}/lib$${UCRONO_LIB_NAME} \
-l$${UCRONO_LIB_NAME} \

########################################################################
# unadir

# unadir INCLUDEPATH
#
unadir_INCLUDEPATH += \

# unadir DEFINES
#
unadir_DEFINES += \

# unadir LIBS
#
unadir_LIBS += \
$${ucrono_LIBS} \
$${ufila_LIBS} \
$${urostra_LIBS} \
$${build_unadir_LIBS} \

contains(UNADIR_OS,macosx|linux) {
unadir_LIBS += \
-lpthread \
-ldl
} else {
} # contains(UNADIR_OS,macosx|linux)

contains(UNADIR_OS,linux) {
unadir_LIBS += \
-lrt
} else {
} # contains(UNADIR_OS,linux)


