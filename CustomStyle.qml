/**
 * Global QML styling properties.
 */
pragma Singleton

import QtQuick 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.2


QtObject {
    readonly property int TITLE_ALIGNMENT: Text.AlignHLeft
    readonly property int TITLE_FONT_SIZE: 50
    readonly property color TITLE_COLOR: Material.color(Material.Orange)
}
