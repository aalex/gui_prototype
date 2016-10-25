QT += qml quick quickcontrols2

CONFIG += c++11
CONFIG += console

SOURCES += main.cpp

RESOURCES += qml.qrc
# RESOURCES += i18n.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

#TRANSLATIONS = \
#    translations/hemcapp_de.ts \
#    translations/hemcapp_en.ts \
#    translations/hemcapp_es.ts \
#    translations/hemcapp_fr.ts \
#    translations/hemcapp_pt.ts \
#    translations/hemcapp_zh_HANS.ts \
#    translations/hemcapp_zh_HANT.ts

# Default rules for deployment.
include(deployment.pri)
