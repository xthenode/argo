########################################################################
# Copyright (c) 1988-2020 $organization$
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
#   File: sony.pri
#
# Author: $author$
#   Date: 5/23/2020
#
# QtCreator .pri file for argo executable sony
########################################################################

########################################################################
# sony

# sony TARGET
#
sony_TARGET = sony

# sony INCLUDEPATH
#
sony_INCLUDEPATH += \
$${argo_INCLUDEPATH} \

# sony DEFINES
#
sony_DEFINES += \
$${argo_DEFINES} \

########################################################################
# sony OBJECTIVE_HEADERS
#
#sony_OBJECTIVE_HEADERS += \
#$${ARGO_SRC}/argo/base/Base.hh \

# sony OBJECTIVE_SOURCES
#
#sony_OBJECTIVE_SOURCES += \
#$${ARGO_SRC}/argo/base/Base.mm \

########################################################################
# sony HEADERS
#
sony_HEADERS += \
$${NADIR_SRC}/xos/console/main.hpp \
$${NADIR_SRC}/xos/console/main_main.hpp \
$${NADIR_SRC}/xos/console/getopt/main_opt.hpp \
$${NADIR_SRC}/xos/console/getopt/main.hpp \
\
$${RETE_SRC}/xos/app/console/network/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/main.hpp \
\
$${STARA_SRC}/xos/protocol/xttp/message/header/content/type.hpp \
$${STARA_SRC}/xos/protocol/xttp/message/header/fields.hpp \
$${STARA_SRC}/xos/protocol/xttp/message/parts.hpp \
$${STARA_SRC}/xos/protocol/xttp/request/method.hpp \
$${STARA_SRC}/xos/protocol/xttp/request/line.hpp \
$${STARA_SRC}/xos/protocol/xttp/request/message.hpp \
$${STARA_SRC}/xos/protocol/http/message/part.hpp \
$${STARA_SRC}/xos/protocol/http/request/method/which.hpp \
$${STARA_SRC}/xos/protocol/http/request/method/name.hpp \
$${STARA_SRC}/xos/protocol/http/request/method/nameof.hpp \
$${STARA_SRC}/xos/protocol/http/content/media/type/which.hpp \
$${STARA_SRC}/xos/protocol/http/content/media/type/name.hpp \
$${STARA_SRC}/xos/protocol/http/content/media/subtype/which.hpp \
$${STARA_SRC}/xos/protocol/http/content/media/subtype/name.hpp \
$${STARA_SRC}/xos/protocol/http/content/type/which.hpp \
$${STARA_SRC}/xos/protocol/http/content/type/name.hpp \
$${STARA_SRC}/xos/protocol/http/content/type/nameof.hpp \
\
$${STARA_SRC}/xos/app/console/network/protocol/xttp/main_opt.hpp \
$${STARA_SRC}/xos/app/console/network/protocol/xttp/main.hpp \
\
$${ARGO_SRC}/xos/app/console/sony/main_opt.hpp \
$${ARGO_SRC}/xos/app/console/sony/main.hpp \

# sony SOURCES
#
sony_SOURCES += \
$${STARA_SRC}/xos/protocol/http/request/method/which.cpp \
$${STARA_SRC}/xos/protocol/http/request/method/name.cpp \
$${STARA_SRC}/xos/protocol/http/request/method/nameof.cpp \
\
$${ARGO_SRC}/xos/app/console/sony/main_opt.cpp \
$${ARGO_SRC}/xos/app/console/sony/main.cpp \
$${NADIR_SRC}/xos/console/main_main.cpp \

########################################################################
# sony FRAMEWORKS
#
sony_FRAMEWORKS += \
$${argo_FRAMEWORKS} \

# sony LIBS
#
sony_LIBS += \
$${argo_LIBS} \


