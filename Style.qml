/**
 * Global QML styling properties.
 */
pragma Singleton

import QtQuick 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.2


QtObject {
    //readonly property int title_ALIGNMENT: Text.AlignHLeft
    readonly property real title_FONT_SIZE: 24 // points
    readonly property color title_COLOR: "#ffcc33" //  Material.color(Material.Orange)

    readonly property real tab_FONT_SIZE: 12 // points

    readonly property real title_PADDING:
        (Math.min(Screen.width, Screen.height) >= 640) ? (Screen.pixelDensity * 2) : (Screen.pixelDensity * 1)
    readonly property real row_SPACING: 5 // The default value is 5. See RowLayout.
    readonly property real column_SPACING: 5 // The default value is 5. See ColumnLayout.
}
