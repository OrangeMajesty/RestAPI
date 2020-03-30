TEMPLATE = lib
CONFIG += console c++11 staticlib
QT += core network

TARGET = rest

SOURCES += \
    Server.cpp \
    Rest.cpp \


HEADERS += \
    Server.h \
    Rest.h \

