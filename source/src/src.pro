TEMPLATE = lib
CONFIG += console c++11 staticlib
QT += core network gui

TARGET = rest

SOURCES += \
    Download.cpp \
    Headers.cpp \
    Image.cpp \
    Rest.cpp \
    Server.cpp \
    Socket.cpp


HEADERS += \
    Download.h \
    Headers.h \
    Image.h \
    Rest.h \
    Server.h \
    Socket.h

LIBS    += -lqjson -lopenssl

win32:LIBS += -LC:/OpenSSL-Win32/ -llibcrypto-1_1 -llibssl-1_1
else:unix:OPENSSL_LIBS='-L/usr/local/ssl/lib/ -lssl -lcrypto' ./configure -openssl-linked



