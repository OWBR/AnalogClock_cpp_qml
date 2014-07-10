import QtQuick 2.0
import QtQuick.Layouts 1.1

Item {
    id : clock
    property date date

    scale: 5
    antialiasing: true

    RowLayout {
        spacing: 2

        Spinner { max: 24; value: clock.date.getHours(); }
        Spinner { max: 60; value: clock.date.getMinutes(); }
        Spinner { max: 60; value: clock.date.getSeconds(); }
    }
}
