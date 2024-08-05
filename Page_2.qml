import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item
{
    id: myPage_2

    Rectangle
    {
        anchors.fill: parent
        anchors.centerIn: parent
        color: "#00FF00"

        ColumnLayout
        {
            anchors.centerIn: parent
            spacing: 10

            Text
            {
                id: myText_2
                text: "This is second Page"
                font.bold: true
                font.pointSize: 20
                color: "#FFFFFF"
            }

            Button
            {
                text: "Back to first page"
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
                onClicked:
                {
                    mySwipeView.currentIndex = 0
                }
            }

            Button
            {
                text: "Goto Third page"
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
                onClicked:
                {
                    mySwipeView.currentIndex = 2
                }
            }
        }
    }
}
