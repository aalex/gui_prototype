/**
 * Slider with a float spin box.
 */
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "."

Item {
    id: root

    property int from: spinbox.from
    property int to: spinbox.to
    property int stepSize: spinbox.stepSize
    property int value: spinbox.value
    property alias editable: spinbox.editable

    height: row.height
    width: row.width

    /**
     * Re-maps a number from one range to another.
     * Numbers outside the range are not clamped.
     */
    function map(value, istart, istop, ostart, ostop)
    {
        return ostart + (ostop - ostart) * ((value - istart) / (istop - istart));
    }

    RowLayout {
        id: row

        Slider {
            id: slider

            from: 0.0
            to: 100.0
            value: 0.0

            // onValueChanged: {
            onPositionChanged: {
                spinbox.value = map(slider.position, 0.0, 1.0, root.from + 0.0, root.to + 0.0);
                //console.log("set spinbox.value: " + spinbox.value);
            }
        }

        SpinBox {
            id: spinbox

            from: 0
            to: 100
            value: 0
            stepSize: 1
            editable: true

            onValueChanged: {
                slider.value = spinbox.value;
                //console.log("set slider.value: " + slider.value);
            }
        }
    }

    onFromChanged: {
        slider.from = this.from
        spinbox.from = this.from
    }
    onToChanged: {
        slider.to = this.to
        spinbox.to = this.to
    }
    onValueChanged: {
        slider.value = this.value
        spinbox.value = this.value
    }
    onStepSizeChanged: {
        spinbox.stepSize = this.stepSize
    }
    Component.onCompleted: {
        spinbox.from = this.from
        spinbox.to = this.to
        spinbox.stepSize = this.stepSize
        spinbox.value= this.value
    }
}
