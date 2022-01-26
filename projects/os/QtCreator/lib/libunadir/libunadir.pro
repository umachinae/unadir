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
#   File: libunadir.pro
#
# Author: $author$
#   Date: 1/25/2022
#
# os specific QtCreator project .pro file for framework unadir static library libunadir
########################################################################
#
# Debug: unadir/build/os/QtCreator/Debug/lib/libunadir
# Release: unadir/build/os/QtCreator/Release/lib/libunadir
# Profile: unadir/build/os/QtCreator/Profile/lib/libunadir
#
include(../../../../../build/QtCreator/unadir.pri)
include(../../../../QtCreator/unadir.pri)
include(../../unadir.pri)
include(../../../../QtCreator/lib/libunadir/libunadir.pri)

TARGET = $${libunadir_TARGET}
TEMPLATE = $${libunadir_TEMPLATE}
CONFIG += $${libunadir_CONFIG}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${libunadir_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${libunadir_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${libunadir_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${libunadir_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${libunadir_HEADERS} \
$${libunadir_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${libunadir_SOURCES} \

########################################################################

