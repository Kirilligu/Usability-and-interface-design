import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

ApplicationWindow {
    id: win
    minimumWidth: 360
    width: 360
    height: 640
    visible: true
    title: "Task_for_Login_Page"

    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: "#f5f5f5" }
            GradientStop { position: 1; color: "#e0e0e0" }
        }
    }

    ColumnLayout {
        anchors.centerIn: parent
        width: 200
        spacing: 8

        TextField {
            id: usernameField
            placeholderText: "Username"
            font.pixelSize: 16
            Layout.fillWidth: true
        }

        TextField {
            id: passwordField
            placeholderText: "Password"
            font.pixelSize: 16
            echoMode: TextInput.Password
            Layout.fillWidth: true
        }

        RowLayout {
            spacing: 8
            Button {
                text: "Log in"
                onClicked: {
                    console.log("")
                }
            }
            Button {
                text: "Clear"
                onClicked: {
                    usernameField.text = ""
                    passwordField.text = ""
                }
            }
        }
    }
}
