import QtQuick 2.15
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")

    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: page_red
    }
    ToolButton {
        text: "<-"
        font.pixelSize: 24
        visible: stack_view.depth > 1
        onClicked: stack_view.pop()
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.margins: 10
    }
    PageComponent {
        id: page_red
        bg: "red"
        btext1: "To Green"
        btext2: "To Yellow"
        onButtonClicked1: stack_view.push(page_green)
        onButtonClicked2: stack_view.push(page_yellow)
    }
    PageComponent {
        id: page_green
        bg: "green"
        btext1: "To Yellow"
        btext2: "To Red"
        onButtonClicked1: stack_view.push(page_yellow)
        onButtonClicked2: stack_view.push(page_red)
    }
    PageComponent {
        id: page_yellow
        bg: "yellow"
        btext1: "To Red"
        btext2: "To Green"
        onButtonClicked1: stack_view.push(page_red)
        onButtonClicked2: stack_view.push(page_green)
    }
}
