import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item
{
    id: myPage_3

    Rectangle
    {
        anchors.fill: parent
        anchors.centerIn: parent
        color: "#0000FF"

        ColumnLayout
        {
            anchors.centerIn: parent
            spacing: 10

            Text
            {
                id: myText_3
                text: "This is third Page"
                font.bold: true
                font.pointSize: 20
                color: "#FFFFFF"
            }

            Button
            {
                text: "Back to second page"
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
                onClicked:
                {
                    mySwipeView.currentIndex = 1
                }
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
        }
    }
}
