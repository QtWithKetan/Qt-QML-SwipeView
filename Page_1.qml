import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item
{
    id: myPage_1

    Rectangle
    {
        anchors.fill: parent
        anchors.centerIn: parent
        color: "#FF0000"

        ColumnLayout
        {
            anchors.centerIn: parent
            spacing: 10

            Text
            {
                id: myText_1
                text: "This is first Page"
                font.bold: true
                font.pointSize: 20
                color: "#FFFFFF"
            }

            Button
            {
                text: "Goto second page"
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
                onClicked:
                {
                    mySwipeView.currentIndex = 1
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
