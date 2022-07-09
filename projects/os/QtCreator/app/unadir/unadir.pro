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
#   File: unadir.pro
#
# Author: $author$
#   Date: 4/29/2022
#
# os specific QtCreator project .pro file for framework unadir executable unadir
########################################################################
#
# Debug: unadir/build/os/QtCreator/Debug/bin/unadir
# Release: unadir/build/os/QtCreator/Release/bin/unadir
# Profile: unadir/build/os/QtCreator/Profile/bin/unadir
#
include(../../../../../build/QtCreator/unadir.pri)
include(../../../../QtCreator/unadir.pri)
include(../../unadir.pri)
include(../../../../QtCreator/app/unadir/unadir.pri)

TARGET = $${unadir_exe_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${unadir_exe_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${unadir_exe_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${unadir_exe_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${unadir_exe_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${unadir_exe_HEADERS} \
$${unadir_exe_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${unadir_exe_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${unadir_exe_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${unadir_exe_LIBS} \
$${FRAMEWORKS} \

########################################################################

