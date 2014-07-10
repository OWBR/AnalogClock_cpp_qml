import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1

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

            onTriggered: {
                var date = new Date();
                hour.value = date.getHours()
                minute.value = date.getMinutes()
                second.value = date.getSeconds()
            }
        }

        Item {
            scale: 5
            antialiasing: true

            RowLayout {
                spacing: 2

                Spinner { id : hour; max: 24 }
                Spinner { id : minute; max: 60 }
                Spinner { id : second; max: 60 }
            }
        }
    }
}
