import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow{
    id: mainWindow
    visible: true
    color:"transparent"
    width: 1000
    height: 650

    Rectangle{
        id: mainRect
        
        anchors.fill: parent
        anchors{ 
            leftMargin: 7
            topMargin: 7
            bottomMargin: 7
            rightMargin: 7
        }
        color:"#343539"

        Rectangle{
            id: titleBar
            color: "#27282B"
            width: mainRect.width
            height: 55
        }

        Rectangle {
            id: menuBar
            color: "#27282B"
            height: mainRect.height-titleBar.height
            width: 55
            anchors {
                top: titleBar.bottom
            }
        }

        // Text {
        //     text: "Hello User"
        //     color: "white"
        //     font.pixelSize: 24
        //     anchors.top : titleBar.bottom
        //     anchors.left: menuBar.right
        // }

        Rectangle {
            anchors{
                top: titleBar.top
                left: titleBar.left
                right: menuBar.right
                bottom: titleBar.bottom
            }
            id: button
            signal clicked
            // height: 45
            // width: 45
            // color: "white"

            // property bool isBlue: true
            // color: isBlue ? "blue" : "red"

            color: "#F0F2F3"
            Text{
                // text: button.isBlue ? "blue" : "red"
                id: buttonText
                text: "Toggle"
                font.pixelSize: 14
                color: "black"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        // onClicked: {
                        //     button.isBlue = !button.isBlue
                        // }
                        onEntered:{
                            buttonText.color = "green"
                            // console.log("entered")
                        }
                        onExited:{
                            buttonText.color = "black"
                            // console.log("exited")
                        }
                    }

            
        }
        Rectangle{
                id: titleRect 
                color:"transparent"
                // width: parent.width
                // height: parent.height
                height: titleBar.height/1.65
                anchors{
                top: button.top
                left: button.right
                right: titleBar.right
                // bottom: button.bottom
                }
                Rectangle{
                    id: logo
                    color: "white"
                    height: parent.height/2
                    width: 20
                    anchors {
                        top: parent.top
                        topMargin: 9
                        left: parent.left
                        leftMargin: 7
                        verticalCenter: parent.verticalCenter
                    }
                }
                Text{
                    color:"white"
                    font.pixelSize: 14
                    text:"Application 1"
                    anchors{
                        left: logo.right
                        leftMargin: 5
                        // bottom: parent.bottom
                        verticalCenter: titleRect.verticalCenter
                        // horizontalCenter: parent.horizontalCenter
                    }
                }
                
            }
        Rectangle {
            id: applicationDes
                color: "#313A3E"
                // top: titleRect.bottom
                // left: titleRect.right
                // right: titleBar.right
                // height: 20
                anchors{
                    top: titleRect.bottom
                    left: titleRect.left
                    right: titleRect.right
                    bottom: titleBar.bottom
                }
                Text{
                    text:"Application Description"
                    font.pixelSize : 10
                    color: "#93A0A5"
                    
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    // : parent.bottom
                }
                Text{
                    text:"|HOME"
                    font.pixelSize : 10
                    color: "#93A0A8"
                    
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 5

                    // : parent.bottom
                }
            }
        
        Column {
            id: menuColumn
            anchors {
                top: button.bottom
                bottom: parent.bottom
                left: parent.left
                right: button.right
                bottomMargin: 60
            }
            Rectangle {
                id: columnRect1
                height: 25
                width:200
                anchors {
                    top: menuColumn.top
                    topMargin: 25
                }
            }
            Rectangle {
                id: columnRect2
                height: 25
                width:200
                anchors {
                    top: columnRect1.bottom
                    topMargin: 25
                }
            }
            Rectangle {
                id: columnRect3
                height: 25
                width:200
                anchors {
                    top: columnRect2.bottom
                    topMargin: 25
                }
            }
        }

        Rectangle{
                anchors {
                    top: parent.top
                    bottom: parent.bottom
                    right: parent.right
                }
            Row {
                id: rowContent
                // anchors {
                //     top: parent.top
                //     bottom: parent.bottom
                //     right: parent.right
                // }
                Rectangle{
                    color:"white"
                    id: rowRect1
                    anchors {
                    top: titleBar.top
                    bottom: titleBar.bottom
                    right: rowContent.right
                    rightMargin: 7
                    }
                    Text{
                        text:"-"
                        font.pixelSize: 15
                        color: "white"
                    }
                }
                Rectangle{
                    id: rowRect2
                    color:"white"
                    anchors {
                    top: titleBar.top
                    bottom: titleBar.bottom
                    right: rowRect1.left
                    rightMargin:4
                    }
                    Text{
                        text:"+"
                        font.pixelSize: 15
                        color: "white"
                    }
                }
                Rectangle{
                    id: rowRect3
                    color:"white"
                    anchors {
                    top: titleBar.top
                    bottom: titleBar.bottom
                    right: rowRect2.left
                    rightMargin:4
                    }
                    Text{
                        text:"x"
                        font.pixelSize: 15
                        color: "white"
                    }
                }
            }

        }
        
        Rectangle {
            // height: mainRect.height -55
            id: contentPage
            color: "transparent"
            anchors{
                left: menuBar.right
                top: titleBar.bottom
                right: parent.right
                bottom: parent.bottom
                bottomMargin: 20
            }
        }
        
        Rectangle {
            // height: mainRect.height -55
            id: statusBar
            color: "#313A3E"
            anchors{
                left: menuBar.right
                top: contentPage.bottom
                right: parent.right
                bottom: parent.bottom
                // bottomMargin: 20
            }
            Text {
                text:"status: active"
                    font.pixelSize : 10
                    color: "#93A0A8"
                    
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 5
            }
            Text {
                text:"notifications: 10"
                    font.pixelSize : 10
                    color: "#93A0A8"
                    
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 5
            }
        }
    }
}