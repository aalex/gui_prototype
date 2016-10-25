import QtQuick 2.0
import QtQuick.Controls 2.0
import "."

Item {
    height: slider.height
    width: slider.width

    Slider {
        id: slider
        // defaults:
        from: 0.0
        to: 1.0
        value: 0.0
    }
}
