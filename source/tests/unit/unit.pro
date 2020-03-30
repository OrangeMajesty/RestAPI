TEMPLATE = app
CONFIG += console

QT += core gui

isEmpty(BOOST_INCLUDE_DIR): BOOST_INCLUDE_DIR=$$(BOOST_INCLUDE_DIR)
!isEmpty(BOOST_INCLUDE_DIR): INCLUDEPATH *= $${BOOST_INCLUDE_DIR}

isEmpty(BOOST_INCLUDE_DIR): {
    #message("BOOST_INCLUDE_DIR is not set, assuming Boost can be found automatically in your system")
}

INCLUDEPATH += lib/boost_1_72_0

SOURCES += \
    main.cpp \
