import QtQuick 2.15
import QtQuick.Layouts 1.3

Window {
    width: 600
    height: 400
    visible: true
    title: qsTr("Task_for_Signal")

    Rectangle {
        anchors.fill: parent
        color: "#f0f0f0"
        radius: 10
        border.color: "#cccccc"
        border.width: 2

        ColumnLayout {
            anchors.fill: parent
            spacing: 10
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                color: "#dcdcdc"
                border.color: "#cccccc"
                border.width: 1
                radius: 10

                Text {
                    id: headerText
                    anchors.centerIn: parent
                    text: "Header"
                    color: "#000000"
                    font.pixelSize: 20
                }
            }
            Item {
                Layout.fillWidth: true
                Layout.fillHeight: true

                Rectangle {
                    width: parent.width * 0.9
                    height: parent.height
                    anchors.centerIn: parent
                    color: "#f5f5f5"
                    border.color: "#cccccc"
                    border.width: 1
                    radius: 10

                    Text {
                        id: contentText
                        anchors.centerIn: parent
                        text: "Content"
                        color: "#000000"
                        font.pixelSize: 18
                    }
                }
            }
            RowLayout {
                Layout.preferredHeight: 50
                Layout.fillWidth: true
                spacing: 10
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    id: button1
                    property bool isOrange: false
                    color: isOrange ? "#f5a700" : "#d3d3d3"
                    border.color: "#cccccc"
                    border.width: 1
                    radius: 10
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            button1.isOrange = !button1.isOrange;
                            headerText.text = "Header 1";
                            contentText.text = "Item 1 content";
                            button2.isOrange = false;
                            button3.isOrange = false;
                            button1Text.opacity = 1.0;
                            button2Text.opacity = 0.5;
                            button3Text.opacity = 0.5;
                        }
                    }
                    Text {
                        id: button1Text
                        anchors.centerIn: parent
                        text: "1"
                        color: "#000000"
                        opacity: 1.0
                    }
                }
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    id: button2
                    property bool isOrange: false
                    color: isOrange ? "#f5a700" : "#d3d3d3"
                    border.color: "#cccccc"
                    border.width: 1
                    radius: 10
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            button2.isOrange = !button2.isOrange;
                            headerText.text = "Header 2";
                            contentText.text = "Item 2 content";
                            button1.isOrange = false;
                            button3.isOrange = false;
                            button2Text.opacity = 1.0;
                            button1Text.opacity = 0.5;
                            button3Text.opacity = 0.5;
                        }
                    }
                    Text {
                        id: button2Text
                        anchors.centerIn: parent
                        text: "2"
                        color: "#000000"
                        opacity: 1.0
                    }
                }
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    id: button3
                    property bool isOrange: false
                    color: isOrange ? "#f5a700" : "#d3d3d3"
                    border.color: "#cccccc"
                    border.width: 1
                    radius: 10
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            button3.isOrange = !button3.isOrange;
                            headerText.text = "Header 3";
                            contentText.text = "Item 3 content";
                            button1.isOrange = false;
                            button2.isOrange = false;
                            button3Text.opacity = 1.0;
                            button1Text.opacity = 0.5;
                            button2Text.opacity = 0.5;
                        }
                    }
                    Text {
                        id: button3Text
                        anchors.centerIn: parent
                        text: "3"
                        color: "#000000"
                        opacity: 1.0
                    }
                }
            }
        }
    }
}
