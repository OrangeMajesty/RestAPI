TEMPLATE = app
CONFIG += console

QT += core gui

#isEmpty(BOOST_INCLUDE_DIR): BOOST_INCLUDE_DIR=$$(BOOST_INCLUDE_DIR)
#!isEmpty(BOOST_INCLUDE_DIR): INCLUDEPATH *= $${BOOST_INCLUDE_DIR}

#isEmpty(BOOST_INCLUDE_DIR): {
#    #message("BOOST_INCLUDE_DIR is not set, assuming Boost can be found automatically in your system")
    INCLUDEPATH += lib/boost_1_72_0
#}

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../src/release/ -lrest
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../src/debug/ -lrest
else:unix: LIBS += -L$$OUT_PWD/../../src/ -lrest

INCLUDEPATH += $$PWD/../../src
DEPENDPATH += $$PWD/../../src

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../src/release/librest.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../src/debug/librest.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../src/release/rest.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../src/debug/rest.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../../src/librest.a

SOURCES += \
    main.cpp
