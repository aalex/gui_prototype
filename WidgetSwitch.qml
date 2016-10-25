import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
//import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.2


Item {
    id: root

    property bool isOn: false
    property string textOn: qsTr("On")
    property string textOff: qsTr("Off")

    height: toggle.height
    width: toggle.width

    Switch {
        id: toggle

        position: isOn ? 1.0: 0.0
        text: root.textOff

        onPositionChanged: {
            isOn = (this.position >= 0.5)
            if (isOn) {
                this.text = textOn;
            } else {
                this.text = textOff;
            }
        }

        Component.onCompleted: {
            if (isOn) {
                this.position = 1.0
            } else {
                this.position = 0.0
            }
        }
    }
}
