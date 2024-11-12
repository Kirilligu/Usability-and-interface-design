import QtQuick 2.15
import QtQuick.Layouts 1.3

Window {
    width: 800
    height: 200
    visible: true
    title: qsTr("RowLayout")

    RowLayout {
        anchors.fill: parent
        spacing: 5
        Rectangle {
            id: rect1
            Layout.fillWidth: true
            Layout.fillHeight: true
            border.width: 1
            color: Qt.rgba(Math.random(), Math.random(), Math.random(), 0.7)

            Text {
                text: {
                    var r = Math.round(rect1.color.r * 255);
                    var g = Math.round(rect1.color.g * 255);
                    var b = Math.round(rect1.color.b * 255);
                    var a = Math.round(rect1.color.a * 255);
                    return "My color: #" + r.toString(16).padStart(2, '0') + g.toString(16).padStart(2, '0') + b.toString(16).padStart(2, '0') + a.toString(16).padStart(2, '0');
                }
                anchors.centerIn: parent
                font.pixelSize: 24
            }
        }
        Rectangle {
            id: rect2
            Layout.fillWidth: true
            Layout.fillHeight: true
            border.width: 1
            color: Qt.rgba(Math.random(), Math.random(), Math.random(), 0.7)

            Text {
                text: {
                    var r = Math.round(rect2.color.r * 255);
                    var g = Math.round(rect2.color.g * 255);
                    var b = Math.round(rect2.color.b * 255);
                    var a = Math.round(rect2.color.a * 255);
                    return "My color: #" + r.toString(16).padStart(2, '0') + g.toString(16).padStart(2, '0') + b.toString(16).padStart(2, '0') + a.toString(16).padStart(2, '0');
                }
                anchors.centerIn: parent
                font.pixelSize: 24
            }
        }

        Rectangle {
            id: rect3
            Layout.fillWidth: true
            Layout.fillHeight: true
            border.width: 1
            color: Qt.rgba(Math.random(), Math.random(), Math.random(), 0.7)

            Text {
                text: {
                    var r = Math.round(rect3.color.r * 255);
                    var g = Math.round(rect3.color.g * 255);
                    var b = Math.round(rect3.color.b * 255);
                    var a = Math.round(rect3.color.a * 255);
                    return "My color: #" + r.toString(16).padStart(2, '0') + g.toString(16).padStart(2, '0') + b.toString(16).padStart(2, '0') + a.toString(16).padStart(2, '0');
                }
                anchors.centerIn: parent
                font.pixelSize: 24
            }
        }
    }
}
