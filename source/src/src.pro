TEMPLATE = lib
CONFIG += console c++11 staticlib
QT += core network

TARGET = rest

SOURCES += \
    server.cpp \
    rest.cpp \


HEADERS += \
    server.h \
    rest.h \

