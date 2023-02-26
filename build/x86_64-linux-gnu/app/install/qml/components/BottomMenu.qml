import QtQuick 2.9
import Morph.Web 0.1
import Ubuntu.Components 1.3
import QtQuick.LocalStorage 2.0
import Ubuntu.Components.Popups 1.3
import Ubuntu.Content 1.1
import QtQuick.Controls 2.3




Rectangle {
  id: bottomMenu
  z: 100000
  width: parent.width
  height: units.gu(4)
  color: "#ffffff"

  anchors {
    top: parent.top
  }


  Row {
    width: parent.width
    height: parent.height-units.gu(0.1)
    anchors {
      centerIn: parent
    }



    Item {
      width: parent.width/4
      height: parent.height



      Button {
          id: fileButton

          anchors.centerIn: parent

          background: Rectangle {
                  border.width: 0
                  color: "#fff"
              }

          contentItem: Text {
                  text: "\u2630"
                  color: "#000"

              }






          onClicked: {
 
              menu.open();



          }


}




          Menu {
              id: menu
              x: bottomMenu.height * -1
              y: bottomMenu.height * -1
              width: root.width / 2
              height: root.height
              topMargin: bottomMenu.height * -1
              leftMargin: bottomMenu.height * -1


              background: Rectangle {
                  implicitWidth: parent.width
                  implicitHeight: parent.height
                  color: "#333"
                  //color: control.hovered ? "#fff" : "#333"
              }




            Action {
                  text: "Startseite"
                  onTriggered: webview.myMobileUrl = "https://gnulinux.ch"
            }
              MenuSeparator {
                     padding: 0
                     topPadding: 12
                     bottomPadding: 12
                     contentItem: Rectangle {
                         implicitWidth: 200
                         implicitHeight: 1
                         color: "#fff"
                     }
                 }
              Action {
                  text: "Community"
                  onTriggered: webview.myMobileUrl = "https://gnulinux.ch/mitmachen-bei-gnu-linux-ch"
              }
              Action {
                  text: "Mitschreiben"
                  onTriggered: webview.myMobileUrl = "https://gnulinux.ch/mitschreiben"
              }
              Action {
                  text: "\u2606 Unterstützen"
                  onTriggered: webview.myMobileUrl = "https://gnulinux.ch/unterstuetzen"
              }
              Action {
                  text: "Über Uns"
                  onTriggered: webview.myMobileUrl = "https://gnulinux.ch/ueber"
              }
              Action {
                  text: "Pendler & Vielfahrer"
                  onTriggered: webview.myMobileUrl = "https://www.bahn.de/angebot/pendler"
              }
              Action {
                  text: "Meine Tickets"
                  onTriggered: webview.myMobileUrl = "https://fahrkarten.bahn.de/privatkunde/start/start.post?scope=login"
              }
              Action {
                  text: "BahnCard & BahnBonus"
                  onTriggered: webview.myMobileUrl = "https://fahrkarten.bahn.de/privatkunde/start/start.post?scope=login"
              }
              MenuSeparator {
                     padding: 0
                     topPadding: 12
                     bottomPadding: 12
                     contentItem: Rectangle {
                         implicitWidth: 200
                         implicitHeight: 1
                         color: "#fff"
                     }
                 }
              Action {
                  text: "Ankunft / Abfahrt"
                  onTriggered: webview.myMobileUrl = "https://mobile.bahn.de/bin/mobil/bhftafel.exe/dox?country=DEU&rt=1&use_realtime_filter=1&webview=&"
              }
              Action {
                  text: "Ist mein Zug pünktlich?"
                  onTriggered: webview.myMobileUrl = "https://mobile.bahn.de/bin/mobil/trainsearch.exe/dox?webview=&"

              }


              delegate: MenuItem {
                  id: menuItem
                  contentItem: Text {
                      text: menuItem.text

                      color: menuItem.highlighted ? "#333" : "#fff"
                      //color: "#fff"
                  }

                  background: Rectangle {

                              color: menuItem.highlighted ? "#fff" : "#333"
                          }
              }



          }









    }


    Item {
      width: parent.width/4
      height: parent.height

      Icon {
        anchors.centerIn: parent
        width: units.gu(2.2)
        height: width
        name: "go-previous"
        color: "#000000"
      }

      MouseArea {
        anchors.fill: parent
        onClicked: {
          webview.goBack()
        }
      }
    }

    Item {
      width: parent.width/4
      height: parent.height

      Icon {
        anchors.centerIn: parent
        width: units.gu(2.2)
        height: width
        name: "reload"
        color: "#000000"
      }

      MouseArea {
        anchors.fill: parent
        onClicked: {
          webview.reload()
        }
      }
    }

    Item {
      width: parent.width/4
      height: parent.height

      Icon {
        anchors.centerIn: parent
        width: units.gu(2.2)
        height: width
        name: "go-next"
        color: "#000000"
      }

      MouseArea {
        anchors.fill: parent
        onClicked: {
          webview.goForward()
        }
      }
    }

  }
}
