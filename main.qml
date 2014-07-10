import QtQuick 2.2
import QtQuick.Controls 1.1

ApplicationWindow {
    id : mainWindow
    visible: true
    width: 640
    height: 480
    title: qApp.applicationName + " v" + qApp.applicationVersion + qsTr(" author Ilya Petrash")

    Item {
        anchors.fill: parent
        anchors.margins: 10

        Timer {
            interval: 500; running: true; repeat: true
            onTriggered: digitClock.date = new Date;
        }

        DigitClock { id : digitClock }
    }
}
