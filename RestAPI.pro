TEMPLATE = subdirs

SUBDIRS +=  \
    app \
    src \
    tests\unit \

app.depends = src
unit.depends = src

