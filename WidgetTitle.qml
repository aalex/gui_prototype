import QtQuick 2.0
import QtQuick.Controls 2.0
import "."

Item {
    id: widget_title
    property alias label_color: label.color
    property alias label_text: label.text
    height: label.height
    width: label.width

    Label {
        id: label

        text: "change me"
        color: Style.title_COLOR
        font.pointSize: Style.title_FONT_SIZE

        topPadding: Style.title_PADDING
        leftPadding: Style.title_PADDING
        rightPadding: Style.title_PADDING
        bottomPadding: Style.title_PADDING

        Component.onCompleted: {
            console.log("topPadding: " + topPadding)
        }
    }
}
