import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Task_for_Signal")

    ColumnLayout {
        anchors.fill: parent
        spacing: 5

        MyRect {
            id: header
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            compColor: "#7375D8"
            compText: ""
            Text {
                id: headerText
                text: rowBtns.state === "" ? "Header" : `Header ${rowBtns.state.slice(-1)}`
                font.pixelSize: 20
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
            }
            Text {
                id: back
                text: "<-"
                font.pixelSize: 30
                font.bold: true
                opacity: rowBtns.state === "" ? 0 : 1
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.margins: 10
                MouseArea {
                    anchors.fill: parent
                    onClicked: rowBtns.state = ""
                }
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            MyRect {
                id: content
                compWidth: parent.width * 0.9
                compHeight: parent.height
                anchors.centerIn: parent
                color: "#FFF"
                compText: rowBtns.state === "" ? "Content" : `Item ${rowBtns.state.slice(-1)} content`
            }
        }

        RowLayout {
            id: rowBtns
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            spacing: 5
            state: ""
            property var buttons: ["1", "2", "3"]
            Repeater {
                model: rowBtns.buttons
                MyRect {
                    id: button
                    opacity: rowBtns.state === `btn${modelData}` || rowBtns.state === "" ? 1 : 0.4
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    compColor: rowBtns.state === `btn${modelData}` ? "cyan" : "lightblue"
                    compText: modelData
                    MouseArea {
                        anchors.fill: parent
                        onClicked: rowBtns.state = rowBtns.state === `btn${modelData}` ? "" : `btn${modelData}`
                    }
                }
            }
        }
    }
}
