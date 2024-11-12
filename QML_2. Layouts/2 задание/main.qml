import QtQuick
import QtQuick.Layouts 1.3

Window {
    width: 600
    height: 400
    visible: true
    title: qsTr("Task_for_Layout")
    Rectangle {
        anchors.fill: parent
        color: "#f0f0f0"
        radius: 10
        border.color: "#cccccc"
        border.width: 2

        ColumnLayout {
            anchors.fill: parent
            spacing: 10
            MyRect {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                compColor: "#07dfd6"
                compText: "Header"
                border.color: "#cccccc"
                border.width: 1
                radius: 10
            }
            Item {
                Layout.fillWidth: true
                Layout.fillHeight: true
                MyRect {
                    compWidth: parent.width * 0.9
                    compHeight: parent.height
                    anchors.centerIn: parent
                    color: "#a7ff7a"
                    compText: "Content"
                    border.color: "#cccccc"
                    border.width: 1
                    radius: 10
                    Behavior on compWidth {
                        NumberAnimation { duration: 500 }
                    }
                    Behavior on compHeight {
                        NumberAnimation { duration: 500 }
                    }
                }
            }
            RowLayout {
                Layout.preferredHeight: 50
                Layout.fillWidth: true
                spacing: 10

                MyRect {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    Layout.alignment: Qt.AlignBottom
                    compColor: "#ebebeb"
                    compText: "1"
                    border.color: "#cccccc"
                    border.width: 1
                    radius: 10
                }

                MyRect {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    Layout.alignment: Qt.AlignBottom
                    compColor: "#130aff"
                    compText: "2"
                    border.color: "#cccccc"
                    border.width: 1
                    radius: 10
                }

                MyRect {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    Layout.alignment: Qt.AlignBottom
                    compColor: "#ff0003"
                    compText: "3"
                    border.color: "#cccccc"
                    border.width: 1
                    radius: 10

                }
            }
        }
    }
}
