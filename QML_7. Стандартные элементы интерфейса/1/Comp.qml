import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    text: buttonText
    onClicked: {
    }

    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: gradientStart }
            GradientStop { position: 1; color: gradientEnd }
        }
    }
}
