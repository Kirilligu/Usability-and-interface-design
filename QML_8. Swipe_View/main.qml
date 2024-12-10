import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("SwipeView")
    property int defMargin: 10
    SwipeView {
        id: view
        currentIndex: indicator.currentIndex
        anchors.fill: parent
        PageComponent { bgColor: "red"}
        PageComponent { bgColor: "yellow"}
        PageComponent { bgColor: "green"}
    }
    PageIndicator {
        id: indicator
        interactive: true
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
