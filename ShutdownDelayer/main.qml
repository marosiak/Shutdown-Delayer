import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 335
    maximumHeight : 480
    maximumWidth : 335
    minimumHeight : 480
    minimumWidth : 335
    height: 480
    title: qsTr("Shutdown Delayer")
    header: TabBar {
        id: bar
        currentIndex: view.currentIndex
        width: parent.width
        TabButton {
            text: qsTr("Shutdown")
            onClicked: view.currentIndex = 0
        }
        TabButton {
            text: qsTr("Reboot")
            onClicked: view.currentIndex = 1
        }
        TabButton {
            text: qsTr("Log off")
            onClicked: view.currentIndex = 2
        }
    }
    SwipeView {
        id: view
        currentIndex: 0
        anchors.fill: parent
        Item {
            id: shutdownTab
            ColumnLayout {
                width: parent.width
                height: parent.height
                spacing: 5
                Item {
                    height: 10 // Spacer
                }
                RowLayout {
                    width: parent.width
                    height: 50
                    SpinBox {
                        id: timeSeconds
                        height: parent.height
                        from: 0
                        to: 59
                    }
                    Label {
                        text: "Seconds"
                        height: parent.height
                        font.pixelSize: 16
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
                RowLayout {
                    width: parent.width
                    height: 50
                    SpinBox {
                        id: minutesSeconds
                        height: parent.height
                        from: 0
                        to: 59
                    }
                    Label {
                        text: "Minutes"
                        height: parent.height
                        font.pixelSize: 16
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
                RowLayout {
                    width: parent.width
                    height: 50
                    SpinBox {
                        id: hoursSeconds
                        height: parent.height
                        from: 0
                        to: 23
                    }
                    Label {
                        text: "Hours"
                        height: parent.height
                        font.pixelSize: 16
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
                RowLayout {
                    width: parent.width
                    height: 50
                    SpinBox {
                        id: daysSeconds
                        height: parent.height
                        from: 0
                        to: 23
                    }
                    Label {
                        text: "Days"
                        height: parent.height
                        font.pixelSize: 16
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
                Button {
                    text: "Set"
                    anchors.right: parent.right
                    anchors.rightMargin: 16
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 12
                }
            }
        }
        Item {
            id: rebootTab
        }
        Item {
            id: logoffTab
        }
    }

}
