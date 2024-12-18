import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Task_for_Login_Page"

    background: Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0; color: "#ffffff" }
            GradientStop { position: 1; color: "#c1bbf9" }
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            spacing: 6
            anchors.horizontalCenter: parent.horizontalCenter

            Repeater {
                model: 6
                Label {
                    width: 20
                    height: 20
                    font.pixelSize: 36
                    text: "*"
                    color: index < passwordField.text.length ? "black" : "gray"
                }
            }
        }

        GridLayout {
            columns: 3
            rowSpacing: 10
            columnSpacing: 10
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter

            Repeater {
                model: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "", "0", "C"]
                delegate: Button {
                    text: modelData
                    width: (parent.width - columnSpacing * (columns - 1)) / columns
                    height: 50
                    onClicked: {
                        if (text === "C") {
                            passwordField.text = "";
                        } else {
                            passwordField.text += text;
                        }
                    }
                    font.pixelSize: 18
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }
        }
        Button {
            text: "Login"
            width: parent.width / 2
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                console.log("Password:", passwordField.text)
            }
            font.pixelSize: 18

        }
    }
    TextField {
        id: passwordField
        visible: false
        echoMode: TextInput.Password
    }
}

