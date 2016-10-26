import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.2

Item {
    width: column_0.width
    height: column_0.height

    ColumnLayout {
        id: column_0

        // Movie image + HEMC status
        RowLayout {
            Rectangle { // TODO: change for an image
                color: Material.color(Material.Orange)
                width: 200
                height: 200
            }

            // HEMC status
            ColumnLayout {

                RowLayout {
                    // User login button
                    Rectangle { // TODO: change for an image
                        color: Material.color(Material.Orange)
                        width: 20
                        height: 20
                    }
                    // Info button
                    Rectangle { // TODO: change for an image
                        color: Material.color(Material.Orange)
                        width: 20
                        height: 20
                    }
                }

                WidgetSwitch {
                    isOn: true
                    textOn: qsTr("Controller online")
                    textOff: qsTr("Controller offline")
                }
                WidgetSwitch {
                    isOn: true
                    textOn: qsTr("Seat detected")
                    textOff: qsTr("No seat detected")
                }
                WidgetSwitch {
                    isOn: true
                    textOn: qsTr("Source detected")
                    textOff: qsTr("No source detected")
                }
                WidgetSwitch {
                    isOn: true
                    textOn: qsTr("Motion detected")
                    textOff: qsTr("No motion detected")
                }
            }


            // Delai and tolerance
            GridLayout {
                columns: 3

                // delai
                Label {
                    text: qsTr("Delai")
                }
                WidgetSliderWithNumber {
                    from: 0
                    to: 100
                    value: 50
                    editable: true
                }
                Label {
                    text: qsTr("ms")
                }

                // tolerance
                Label {
                    text: qsTr("Tolerance")
                }
                WidgetSliderWithNumber {
                    from: -0
                    to: 20
                    value: 10
                    editable: true
                }
                Label {
                    text: qsTr("s")
                }
            }

        }

        // Movie title
        Label {
            text: qsTr("(no movie)")
        }

        // Movie duration
        RowLayout {
            WidgetHorizontalSlider {
                Layout.fillWidth: true
            }
            Label {
                text: "0:00:00"
            }
        }

        // Settings for each seat
        WidgetTitle {
            label_text: qsTr("Your seats")
        }


        // Settings for each seat
        // Seats
        ListView {
            //header: WidgetTitle {
            //    label_text: qsTr("Your seats")
            //}

            //height: seatsDelegate.height * count // 4 //count
            //width: seatsDelegate.width * count // 4 // count
            orientation: ListView.Vertical // default
            verticalLayoutDirection: ListView.TopToBottom // default

            Layout.fillHeight: true
            Layout.fillWidth: true

            // The layout for each item:
            delegate:  RowLayout {
                id: seatItemRow

                Label {
                    text: "" + number
                }
                WidgetSwitch {
                    textOn: qsTr("Seat enabled")
                    textOff: qsTr("Seat disabled")
                }
                GridLayout {
                    columns: 3

                    // motion
                    Label {
                        text: qsTr("Motion")
                    }
                    WidgetSliderWithNumber {
                        from: -20
                        to: 0
                        value: 0
                        editable: true
                    }
                    Label {
                        text: qsTr("dB")
                    }

                    // vibration
                    Label {
                        text: qsTr("Vibration")
                    }
                    WidgetSliderWithNumber {
                        from: -20
                        to: 0
                        value: 0
                        editable: true
                    }
                    Label {
                        text: qsTr("dB")
                    }
                }
            }


                /*
                Component {
                id: seatsDelegate
                Item {
                    width: seatItemRow.width
                    height: seatItemRow.height
                    //width: 400
                    //height: 120

                    Component.onCompleted: {
                        console.log("delegate.width: " + this.width)
                        console.log("delegate.height: " + this.height)
                    }
*/


                  //      }
                //    }

//            highlight: Rectangle {
//                color: Material.color(Material.Grey)
//                radius: 5
//                border.width: 1
//                border.color: Material.color(Material.BlueGrey)
//                antialiasing: true
//            }

            // the data about each seat
            model: ListModel {
                id: seatsModel

                ListElement {
                    number: 1
                    motion: -3
                    vibration: -6
                    enabled: true
                    detected: true
                }
                ListElement {
                    number: 2
                    motion: -3
                    vibration: -6
                    enabled: true
                    detected: true
                }
                ListElement {
                    number: 3
                    motion: -6
                    vibration: -9
                    enabled: true
                    detected: true
                }
                ListElement {
                    number: 4
                    motion: -3
                    vibration: -6
                    enabled: false
                    detected: false
                }
            } // ListModel
        } // ListView
    } // ColumnLayout
}
