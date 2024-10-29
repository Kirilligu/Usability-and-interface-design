import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 600
    height: 400

    Rectangle {
        id: root
        width: 600
        height: 400
        color: "skyblue"

        Rectangle {
            id: dirty
            width: 800
            height: 20
            color: "brown"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: sun
            width: 80
            height: 80
            color: "yellow"
            radius: 40
            anchors.top: parent.top
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
        }

        Rectangle {
            id: base
            width: 200
            height: 150
            color: "tan"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: dirty.top
        }

        Rectangle {
            id: roof
            width: base.width + 40
            height: 100
            color: "saddlebrown"
            anchors.horizontalCenter: base.horizontalCenter
            anchors.bottom: base.top
            radius: 20
        }

        Rectangle {
            id: pipe
            width: 30
            height: 50
            color: "brown"
            anchors.bottom: roof.top
            anchors.horizontalCenter: roof.horizontalCenter
            anchors.horizontalCenterOffset: -50
        }

        Rectangle {
            id: door
            width: 40
            height: 70
            color: "darkred"
            anchors.bottom: base.bottom
            anchors.left: base.left
            anchors.leftMargin: 80
        }

        Rectangle {
            id: window1
            width: 40
            height: 40
            color: "lightblue"
            anchors.top: base.top
            anchors.left: base.left
            anchors.leftMargin: 20
            anchors.topMargin: 20

            Rectangle {
                width: 4
                height: parent.height
                color: "black"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                width: parent.width
                height: 4
                color: "black"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Rectangle {
            id: window2
            width: 40
            height: 40
            color: "lightblue"
            anchors.top: base.top
            anchors.right: base.right
            anchors.rightMargin: 20
            anchors.topMargin: 20

            Rectangle {
                width: 4
                height: parent.height
                color: "black"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                width: parent.width
                height: 4
                color: "black"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Rectangle {
            id: treeTrunk1
            width: 20
            height: 60
            color: "saddlebrown"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 50

            Rectangle {
                width: 60
                height: 60
                color: "green"
                radius: 30
                anchors.bottom: treeTrunk1.top
                anchors.horizontalCenter: treeTrunk1.horizontalCenter
            }
        }

        Rectangle {
            id: treeTrunk2
            width: 20
            height: 60
            color: "saddlebrown"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.rightMargin: 50

            Rectangle {
                width: 60
                height: 60
                color: "green"
                radius: 30
                anchors.bottom: treeTrunk2.top
                anchors.horizontalCenter: treeTrunk2.horizontalCenter
            }
        }
    }
}
