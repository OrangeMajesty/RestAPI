TEMPLATE = subdirs

SUBDIRS +=  src \
    app \
    tests

# build the project sequentially as listed in SUBDIRS !
CONFIG += ordered
