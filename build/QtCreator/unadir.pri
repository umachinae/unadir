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
# build specific QtCreator project .pri file for framework unadir
########################################################################
# Repository Depends: vmachinae
# Depends: urostra;ufila;ucrono

contains(BUILD_OS,Uname) {
UNAME = $$system(uname)

contains(UNAME,Darwin) {
BUILD_OS = macosx
} else {
contains(UNAME,Linux) {
BUILD_OS = linux
} else {
contains(UNAME,Windows) {
BUILD_OS = windows
} else {
BUILD_OS = os
} # contains(UNAME,Windows)
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)
} else {
contains(BUILD_OS,UNADIR_OS) {
} else {
BUILD_OS = os
} # contains(BUILD_OS,UNADIR_OS)
} # contains(BUILD_OS,Uname)

#BUILD_CPP_VERSION = 11

########################################################################
# urostra
#
# pkg-config --cflags --libs urostra
#

# build urostra INCLUDEPATH
#
build_urostra_INCLUDEPATH += \

# build urostra DEFINES
#
build_urostra_DEFINES += \

# build urostra FRAMEWORKS
#
build_urostra_FRAMEWORKS += \

# build urostra LIBS
#
build_urostra_LIBS += \

########################################################################
# ufila
#
# pkg-config --cflags --libs ufila
#

# build ufila INCLUDEPATH
#
build_ufila_INCLUDEPATH += \

# build ufila DEFINES
#
build_ufila_DEFINES += \

# build ufila FRAMEWORKS
#
build_ufila_FRAMEWORKS += \

# build ufila LIBS
#
build_ufila_LIBS += \

########################################################################
# ucrono
#
# pkg-config --cflags --libs ucrono
#

# build ucrono INCLUDEPATH
#
build_ucrono_INCLUDEPATH += \

# build ucrono DEFINES
#
build_ucrono_DEFINES += \

# build ucrono FRAMEWORKS
#
build_ucrono_FRAMEWORKS += \

# build ucrono LIBS
#
build_ucrono_LIBS += \

########################################################################
# unadir

# build unadir INCLUDEPATH
#
build_unadir_INCLUDEPATH += \
$${build_ucrono_INCLUDEPATH} \
$${build_ufila_INCLUDEPATH} \
$${build_urostra_INCLUDEPATH} \


# build unadir DEFINES
#
build_unadir_DEFINES += \
$${build_urostra_DEFINES} \
$${build_ufila_DEFINES} \
$${build_ucrono_DEFINES} \


# build unadir FRAMEWORKS
#
build_unadir_FRAMEWORKS += \
$${build_ucrono_FRAMEWORKS} \
$${build_ufila_FRAMEWORKS} \
$${build_urostra_FRAMEWORKS} \


# build unadir LIBS
#
build_unadir_LIBS += \
$${build_ucrono_LIBS} \
$${build_ufila_LIBS} \
$${build_urostra_LIBS} \

########################################################################
