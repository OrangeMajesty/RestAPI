TEMPLATE = subdirs

SUBDIRS +=  \
    app \
    src \

linux-g++ | linux-g++-64 | linux-g++-32 {
    SUBDIRS += tests/unit
}

win32 {
    SUBDIRS += tests\unit
}

app.depends = src
unit.depends = src
