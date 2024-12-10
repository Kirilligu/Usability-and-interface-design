import QtQuick 2.15
Item {
    property string bgColor: ""
    Rectangle {
        width: parent.width
        height: parent.height
        color: bgColor
        Text {
            anchors.centerIn: parent
            text: parent.text
            color: parent.textColor
            font.pointSize: 16
        }
    }
}
