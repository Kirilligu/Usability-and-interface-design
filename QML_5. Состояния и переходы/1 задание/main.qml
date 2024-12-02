import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    id: win
    width: 375
    height: 720
    visible: true
    title: qsTr("traffic lights")
    Rectangle {
        id: rect
        width: 350
        height: 650
        color: "lightgray"
        anchors.centerIn: parent
        Column {
            spacing: 16
            anchors.centerIn: parent

            Rectangle { id: lightRed; width: 100; height: 100; radius: 50; color: "red" }
            Rectangle { id: lightYellow; width: 100; height: 100; radius: 50; color: "black" }
            Rectangle { id: lightGreen; width: 100; height: 100; radius: 50; color: "black" }
        }
        property int stateIndex: 0
        property var states: [
            { red: "red", yellow: "black", green: "black" },
            { red: "black", yellow: "yellow", green: "black" },
            { red: "black", yellow: "black", green: "green" }
        ]
        function updateLights() {
            lightRed.color = states[stateIndex].red;
            lightYellow.color = states[stateIndex].yellow;
            lightGreen.color = states[stateIndex].green;
        }
        Timer {
            id: switchTimer
            interval: 500
            running: false
            repeat: false
            onTriggered: {
                rect.stateIndex = (rect.stateIndex + 1) % rect.states.length;
                rect.updateLights();
            }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (!switchTimer.running) {
                    switchTimer.start();
                }
            }
        }
    }
}
