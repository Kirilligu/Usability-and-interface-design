import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Task_for_Layout")

    Item {
        anchors.fill: parent

        Rectangle {
            id: headerRect
            anchors.top: parent.top
            width: parent.width
            height: parent.height * 0.1
            color: "lightgrey"
            Text {
                text: "Header"
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: contentRect
            width: parent.width * 0.9
            height: parent.height * 0.6
            border.color: "black"
            anchors.centerIn: parent
            color: "white"
            Text {
                text: "Content"
                anchors.centerIn: parent
            }
        }

        Item {
            width: parent.width
            height: parent.height / 10
            anchors.bottom: parent.bottom

            property var buttonTexts: ["1", "2", "3"]

            Component.onCompleted: {
                for (var i = 0; i < buttonTexts.length; i++) {
                    var rect = Qt.createQmlObject('import QtQuick 2.15; Rectangle { height: parent.height; width: (parent.width - 10) / 3; color: "lightgrey"; Text { text: "' + buttonTexts[i] + '"; anchors.centerIn: parent } }', this);
                    rect.anchors.left = i === 0 ? undefined : rects[i - 1].right;
                    if (i > 0) {
                        rect.anchors.leftMargin = 5;
                    }
                    rects.push(rect);
                }
            }

            property var rects: []
        }
    }
}
