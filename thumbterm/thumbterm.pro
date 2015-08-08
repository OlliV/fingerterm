TARGET = thumbterm
CONFIG += sailfishapp link_pkgconfig
PKGCONFIG += nemonotifications-qt5
LIBS += -lutil

system($$PWD/updateversion.sh)

# Input
HEADERS += \
    src/ptyiface.h \
    src/terminal.h \
    src/textrender.h \
    src/util.h \
    src/keyloader.h \
    src/mainwindow.h \
    src/version.h
SOURCES += \
    src/main.cpp \
    src/terminal.cpp \
    src/textrender.cpp \
    src/ptyiface.cpp \
    src/util.cpp \
    src/keyloader.cpp \
    src/mainwindow.cpp

OTHER_FILES += \
    qml/Main.qml \
    qml/Cover.qml \
    qml/Keyboard.qml \
    qml/Key.qml \
    qml/Lineview.qml \
    qml/Button.qml \
    qml/MenuFingerterm.qml \
    qml/NotifyWin.qml \
    qml/UrlWindow.qml \
    qml/LayoutWindow.qml

RESOURCES += \
    resources.qrc

unix:!symbian:!maemo5 {
    target.path = /usr/bin
    INSTALLS += target
}

maemo5 {
    target.path = /usr/bin
    INSTALLS += target
}

#desktopfile.extra = cp $${TARGET}.desktop.nemo $${TARGET}.desktop
#desktopfile.path = /usr/share/applications
#desktopfile.files = $${TARGET}.desktop
#INSTALLS += desktopfile
