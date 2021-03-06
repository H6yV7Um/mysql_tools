MYSQL_BUILD_OPTS=--with-comment='MySQL Server (custom)' --with-server-suffix='-custom'
MYSQL_BUILD_CXXFLAGS=-DBIG_JOINS=1 -felide-constructors -fno-rtti -O2
MYSQL_BUILD_CFLAGS=-DBIG_JOINS=1 -O2
MYSQL_BUILD_CC=gcc
MYSQL_BUILD_CXX=gcc
# we re-write state into this file. MYSQL_BASE_VERSION might get a suffix added
# by debian/rules which could result in a nasty loop. VER is there to hold the 
# original unadorned version from autoconf
MYSQL_BASE_VERSION=5.0
MYSQL_PREVIOUS_BASE_VERSION=4.1
MYSQL_BRANDED_BASE_VERSION=@MYSQL_BRANDED_BASE_VERSION@
MYSQL_BRANDED_PREVIOUS_BASE_VERSION=@MYSQL_BRANDED_PREVIOUS_BASE_VERSION@
SHARED_LIB_MAJOR_VERSION=15
NDB_SHARED_LIB_MAJOR_VERSION=2
