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
#   Date: 4/29/2022, 5/8/2022
#
# generic QtCreator project .pri file for framework unadir executable unadir
########################################################################

########################################################################
# unadir

# unadir_exe TARGET
#
unadir_exe_TARGET = unadir

# unadir_exe INCLUDEPATH
#
unadir_exe_INCLUDEPATH += \
$${unadir_INCLUDEPATH} \

# unadir_exe DEFINES
#
unadir_exe_DEFINES += \
$${unadir_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# unadir_exe OBJECTIVE_HEADERS
#
#unadir_exe_OBJECTIVE_HEADERS += \
#$${UNADIR_SRC}/xos/app/console/unadir/main.hh \

# unadir_exe OBJECTIVE_SOURCES
#
#unadir_exe_OBJECTIVE_SOURCES += \
#$${UNADIR_SRC}/xos/app/console/unadir/main.mm \

########################################################################
# unadir_exe HEADERS
#
unadir_exe_HEADERS += \
$${UNADIR_SRC}/xos/app/console/unadir/version/main_opt.hpp \
$${UNADIR_SRC}/xos/app/console/unadir/version/main.hpp \

# unadir_exe SOURCES
#
unadir_exe_SOURCES += \
$${UNADIR_SRC}/xos/app/console/unadir/version/main_opt.cpp \
$${UNADIR_SRC}/xos/app/console/unadir/version/main.cpp \

########################################################################
# unadir_exe FRAMEWORKS
#
unadir_exe_FRAMEWORKS += \
$${unadir_FRAMEWORKS} \

# unadir_exe LIBS
#
unadir_exe_LIBS += \
$${unadir_LIBS} \

########################################################################
# NO Qt
QT -= gui core

