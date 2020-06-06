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
#   File: argo.pri
#
# Author: $author$
#   Date: 5/18/2020
#
# Os specific QtCreator .pri file for argo
########################################################################

UNAME = $$system(uname)

contains(UNAME,Darwin) {
ARGO_OS = macosx
} else {
contains(UNAME,Linux) {
ARGO_OS = linux
} else {
ARGO_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,ARGO_OS) {
BUILD_OS = $${ARGO_OS}
} else {
BUILD_OS = os
} # contains(BUILD_OS,ARGO_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(XROSTRA_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
}

########################################################################
# libjson
LIBJSON_THIRDPARTY_PKG_MAKE_BLD = $${LIBJSON_THIRDPARTY_PKG}/build/$${BUILD_OS}/$${BUILD_CONFIG}
LIBJSON_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${LIBJSON_THIRDPARTY_PRJ}/build/$${BUILD_OS}/$${BUILD_CONFIG}
LIBJSON_THIRDPARTY_PKG_BLD = $${LIBJSON_THIRDPARTY_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
LIBJSON_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${LIBJSON_THIRDPARTY_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
LIBJSON_PKG_BLD = $${OTHER_BLD}/$${LIBJSON_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
LIBJSON_PRJ_BLD = $${OTHER_BLD}/$${LIBJSON_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
#LIBJSON_LIB = $${LIBJSON_THIRDPARTY_PKG_MAKE_BLD}/lib
#LIBJSON_LIB = $${LIBJSON_THIRDPARTY_PRJ_MAKE_BLD}/lib
#LIBJSON_LIB = $${LIBJSON_THIRDPARTY_PKG_BLD}/lib
LIBJSON_LIB = $${LIBJSON_THIRDPARTY_PRJ_BLD}/lib
#LIBJSON_LIB = $${LIBJSON_PKG_BLD}/lib
#LIBJSON_LIB = $${LIBJSON_PRJ_BLD}/lib
#LIBJSON_LIB = $${ARGO_LIB}

# libjson LIBS
#
libjson_LIBS += \
-L$${LIBJSON_LIB}/lib$${JSON_NAME} \
-l$${JSON_NAME} \

########################################################################
# nadir
NADIR_THIRDPARTY_PKG_MAKE_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${BUILD_OS}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${BUILD_OS}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PKG_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
NADIR_PKG_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
NADIR_PRJ_BLD = $${OTHER_BLD}/$${NADIR_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_BLD}/lib
NADIR_LIB = $${NADIR_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_PRJ_BLD}/lib
#NADIR_LIB = $${ARGO_LIB}

# nadir LIBS
#
nadir_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_NAME} \
-l$${NADIR_NAME} \

########################################################################
# cifra
CIFRA_THIRDPARTY_PKG_MAKE_BLD = $${CIFRA_THIRDPARTY_PKG}/build/$${BUILD_OS}/$${BUILD_CONFIG}
CIFRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${CIFRA_THIRDPARTY_PRJ}/build/$${BUILD_OS}/$${BUILD_CONFIG}
CIFRA_THIRDPARTY_PKG_BLD = $${CIFRA_THIRDPARTY_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
CIFRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${CIFRA_THIRDPARTY_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
CIFRA_PKG_BLD = $${OTHER_BLD}/$${CIFRA_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
CIFRA_PRJ_BLD = $${OTHER_BLD}/$${CIFRA_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
#CIFRA_LIB = $${CIFRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#CIFRA_LIB = $${CIFRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#CIFRA_LIB = $${CIFRA_THIRDPARTY_PKG_BLD}/lib
#CIFRA_LIB = $${CIFRA_THIRDPARTY_PRJ_BLD}/lib
CIFRA_LIB = $${CIFRA_PKG_BLD}/lib
#CIFRA_LIB = $${CIFRA_PRJ_BLD}/lib
#CIFRA_LIB = $${ARGO_LIB}

# cifra LIBS
#
cifra_LIBS += \
-L$${CIFRA_LIB}/lib$${CIFRA_NAME} \
-l$${CIFRA_NAME} \

########################################################################
# rete
RETE_THIRDPARTY_PKG_MAKE_BLD = $${RETE_THIRDPARTY_PKG}/build/$${BUILD_OS}/$${BUILD_CONFIG}
RETE_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${RETE_THIRDPARTY_PRJ}/build/$${BUILD_OS}/$${BUILD_CONFIG}
RETE_THIRDPARTY_PKG_BLD = $${RETE_THIRDPARTY_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
RETE_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${RETE_THIRDPARTY_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
RETE_PKG_BLD = $${OTHER_BLD}/$${RETE_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
RETE_PRJ_BLD = $${OTHER_BLD}/$${RETE_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
#RETE_LIB = $${RETE_THIRDPARTY_PKG_MAKE_BLD}/lib
#RETE_LIB = $${RETE_THIRDPARTY_PRJ_MAKE_BLD}/lib
#RETE_LIB = $${RETE_THIRDPARTY_PKG_BLD}/lib
#RETE_LIB = $${RETE_THIRDPARTY_PRJ_BLD}/lib
RETE_LIB = $${RETE_PKG_BLD}/lib
#RETE_LIB = $${RETE_PRJ_BLD}/lib
#RETE_LIB = $${ARGO_LIB}

# rete LIBS
#
rete_LIBS += \
-L$${RETE_LIB}/lib$${RETE_NAME} \
-l$${RETE_NAME} \

########################################################################
# stara
STARA_THIRDPARTY_PKG_MAKE_BLD = $${STARA_THIRDPARTY_PKG}/build/$${BUILD_OS}/$${BUILD_CONFIG}
STARA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${STARA_THIRDPARTY_PRJ}/build/$${BUILD_OS}/$${BUILD_CONFIG}
STARA_THIRDPARTY_PKG_BLD = $${STARA_THIRDPARTY_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
STARA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${STARA_THIRDPARTY_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
STARA_PKG_BLD = $${OTHER_BLD}/$${STARA_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
STARA_PRJ_BLD = $${OTHER_BLD}/$${STARA_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
#STARA_LIB = $${STARA_THIRDPARTY_PKG_MAKE_BLD}/lib
#STARA_LIB = $${STARA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#STARA_LIB = $${STARA_THIRDPARTY_PKG_BLD}/lib
#STARA_LIB = $${STARA_THIRDPARTY_PRJ_BLD}/lib
STARA_LIB = $${STARA_PKG_BLD}/lib
#STARA_LIB = $${STARA_PRJ_BLD}/lib
#STARA_LIB = $${ARGO_LIB}

# stara LIBS
#
stara_LIBS += \
-L$${STARA_LIB}/lib$${STARA_NAME} \
-l$${STARA_NAME} \

########################################################################
# argo

# argo INCLUDEPATH
#
argo_INCLUDEPATH += \

# argo DEFINES
#
argo_DEFINES += \

# argo LIBS
#
argo_LIBS += \
$${stara_LIBS} \
$${rete_LIBS} \
$${cifra_LIBS} \
$${nadir_LIBS} \
$${libjson_LIBS} \
$${build_argo_LIBS} \

contains(ARGO_OS,macosx|linux) {
argo_LIBS += \
-lpthread \
-ldl
} else {
} # contains(ARGO_OS,macosx|linux)

contains(ARGO_OS,linux) {
argo_LIBS += \
-lrt
} else {
} # contains(ARGO_OS,linux)


