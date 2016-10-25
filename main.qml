
/**
 * Design adaptatif.
 * Multi-lingual application for Android and iOS.
 */

import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.2


ApplicationWindow {
    visible: true
    visibility: Qt.platform.os == "windows" ? "FullScreen" : "AutomaticVisibility"
    width: Screen.width
    height: Screen.height
    title: qsTr("Controller App")
    Material.theme: Material.Dark
    Material.accent: Material.color(Material.Orange)
    Material.primary: Material.color(Material.DeepOrange)
    Component.onCompleted: print_screen_info()

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page {
            header: WidgetTitle {
                label_text: qsTr("Seats")
            }
            contentChildren: [
                PageSeats {
                //ColumnLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                //    Rectangle {
                //        color: "#00ffff"
                //        width: 100
                //        height: 100
                //    }
                }
            ]
        }
        Page {
            header: WidgetTitle {
                label_text: qsTr("Movies")
            }

            contentChildren: [
                ColumnLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    Rectangle {
                        color: "#ff00ff"
                        width: 100
                        height: 100
                    }
                }
            ]
        }
        Page {
            header: WidgetTitle {
                label_text: qsTr("Network")
            }
            contentChildren: [
                ColumnLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    Rectangle {
                        color: "#ffff00"
                        width: 100
                        height: 100
                    }
                }
            ]
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Seats")
        }
        TabButton {
            text: qsTr("Movies")
        }
        TabButton {
            text: qsTr("Network")
        }
    }

    function print_screen_info()
    {
        console.log("Screen.pixelDensity: " + Screen.pixelDensity) // per mm
        console.log("Screen.pixelDensity: (ppi) " + Screen.pixelDensity * 25.4)
        console.log("Screen.orientation: " + Screen.orientation)
        console.log("Screen.width: " + Screen.width)
        console.log("Screen.height: " + Screen.height)

        //width = Screen.width
        //height = Screen.height

        //if (Screen.orientation == Qt.LandscapeOrientation || Screen.orientation == Qt.InvertedLandscapeOrientation) {
        //    width = Screen.width
        //    height = Screen.height
        //} else if (Screen.orientation == Qt.PortraitOrientation || Screen.orientation == Qt.InvertedPortraitOrientation) {
        //    width = Screen.width
        //}
    }
}
