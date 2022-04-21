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
#   File: libunadir.pri
#
# Author: $author$
#   Date: 1/25/2022
#
# generic QtCreator project .pri file for framework unadir static library libunadir
########################################################################

########################################################################
# libunadir
XOS_LIB_UNADIR_VERSION_BUILD_DATE = 1/25/2022 #$$system(~/bin/utility/tdate)

# libunadir TARGET
#
libunadir_TARGET = unadir
libunadir_TEMPLATE = lib
libunadir_CONFIG += staticlib

# libunadir INCLUDEPATH
#
libunadir_INCLUDEPATH += \
$${unadir_INCLUDEPATH} \

# libunadir DEFINES
#
libunadir_DEFINES += \
$${unadir_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_LIB_UNADIR_VERSION_BUILD_DATE=$${XOS_LIB_UNADIR_VERSION_BUILD_DATE} \

########################################################################
# libunadir OBJECTIVE_HEADERS
#
#libunadir_OBJECTIVE_HEADERS += \
#$${UNADIR_SRC}/xos/lib/unadir/version.hh \

# libunadir OBJECTIVE_SOURCES
#
#libunadir_OBJECTIVE_SOURCES += \
#$${UNADIR_SRC}/xos/lib/unadir/version.mm \

########################################################################
# libunadir HEADERS
#
libunadir_HEADERS += \
$${UNADIR_SRC}/xos/lib/unadir/version.hpp \

# libunadir SOURCES
#
libunadir_SOURCES += \
$${UNADIR_SRC}/xos/lib/unadir/version.cpp \

########################################################################

