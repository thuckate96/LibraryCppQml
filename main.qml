import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
//my library define ... its version 1.0
import numberUpLib 1.0


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    NumberUp{
        id: numberUp
    }

    Column{
        id: firstCol
        Text {
            id: txtHits
            text: numberUp.message
        }
        Button{
            id: btnHits
            text: "Up Hits!"
            onClicked: {
                numberUp.upHits()
            }
        }
        Button{
            id: btnExit
            text: "Exit"
            onClicked: {
                Qt.quit()
            }
        }
    }
}
