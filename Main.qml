import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    SwipeView
    {
        id: mySwipeView
        anchors.fill: parent
        currentIndex: 1

        orientation: Qt.Horizontal

        Page_1 { }
        Page_2 { }
        Page_3 { }
    }

    PageIndicator
    {
        id: indicator
        count: mySwipeView.count
        currentIndex: mySwipeView.currentIndex

        anchors.bottom: mySwipeView.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        interactive: true

        onCurrentIndexChanged:
        {
            mySwipeView.currentIndex = currentIndex
        }
    }
}
