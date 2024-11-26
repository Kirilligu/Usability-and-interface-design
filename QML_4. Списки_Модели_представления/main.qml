import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Task_for_ListView_Model")

    property int defMargin: 8

    ListModel {
        id: my_model
    }

    Page {
        id: page
        anchors.fill: parent

        ListView {
            id: messageListView
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: footer.top
            model: my_model
            delegate: Item {
                width: parent.width
                height: 50

                RowLayout {
                    anchors.fill: parent
                    spacing: 8
                    Text {
                        text: model.name
                        font.pointSize: 12
                        color: "black"
                        Layout.fillWidth: true
                    }
                    Text {
                        text: model.time
                        font.pointSize: 10
                        color: "gray"
                        horizontalAlignment: Text.AlignRight
                    }
                }
            }
        }

        Rectangle {
            id: footer
            height: 60
            width: parent.width
            anchors.bottom: parent.bottom
            gradient: Gradient {
                GradientStop { position: 0; color: "lightgray" }
                GradientStop { position: 1; color: "white" }
            }

            signal newMessage(string msg)

            RowLayout {
                anchors.fill: parent
                spacing: 8

                TextField {
                    id: edtText
                    Layout.fillWidth: true
                    placeholderText: "Write a message..."
                    font.pointSize: 10
                    color: "black"
                }

                Button {
                    id: btnAddItem
                    text: "Send"
                    onClicked: {
                        if (edtText.text.trim() !== "") {
                            footer.newMessage(edtText.text);
                            edtText.clear();
                        }
                    }
                }
            }
        }

        Component.onCompleted: {
            footer.newMessage.connect(function(msg) {
                var newMsg = {
                    name: msg,
                    time: Qt.formatTime(new Date(), "hh:mm")
                };
                my_model.append(newMsg);
            });
        }
    }
}
