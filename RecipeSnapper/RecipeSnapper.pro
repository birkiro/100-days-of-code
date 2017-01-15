TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    imageanalyser.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/lib/release/ -ltesseract
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/lib/debug/ -ltesseract
else:unix: LIBS += -L$$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/lib/ -ltesseract

INCLUDEPATH += $$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/include
DEPENDPATH += $$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/lib/release/libtesseract.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/lib/debug/libtesseract.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/lib/release/tesseract.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/lib/debug/tesseract.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/tesseract/3.04.01_2/lib/libtesseract.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/lib/release/ -llept
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/lib/debug/ -llept
else:unix: LIBS += -L$$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/lib/ -llept

INCLUDEPATH += $$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/include
DEPENDPATH += $$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/lib/release/liblept.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/lib/debug/liblept.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/lib/release/lept.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/lib/debug/lept.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../../../../usr/local/Cellar/leptonica/1.73/lib/liblept.a
