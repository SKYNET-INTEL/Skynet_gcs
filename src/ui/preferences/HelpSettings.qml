/****************************************************************************
 *
 * (c) 2009-2020 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/

import QtQuick          2.3
import QtQuick.Layouts  1.11

import QGroundControl               1.0
import QGroundControl.Controls      1.0
import QGroundControl.Palette       1.0
import QGroundControl.ScreenTools   1.0

Rectangle {
    color:          qgcPal.window
    anchors.fill:   parent

    readonly property real _margins: ScreenTools.defaultFontPixelHeight

    QGCPalette { id: qgcPal; colorGroupEnabled: true }

    QGCFlickable {
        anchors.margins:    _margins
        anchors.fill:       parent
        contentWidth:       grid.width
        contentHeight:      grid.height
        clip:               true

        GridLayout {
            id:         grid
            columns:    2

            QGCLabel { text: qsTr("SKYNET Comprehensive GCS") }
            QGCLabel {
                linkColor:          qgcPal.text
                text:               "<a href=\"https://WWW.SKYNET-INTEL.com</a>"
                onLinkActivated:    Qt.openUrlExternally(link)
            }

            QGCLabel { text: qsTr("Developed by Dronestech Lab") }
            QGCLabel {
                linkColor:          qgcPal.text
                text:               "<a href=\"DRONESTECHLAB.COM</a>"
                onLinkActivated:    Qt.openUrlExternally(link)
            }

            QGCLabel { text: qsTr("Contact admin for more information") }
            QGCLabel {
                linkColor:          qgcPal.text
                text:               "<a href=\"BETA VERSION</a>"
                onLinkActivated:    Qt.openUrlExternally(link)
            }
        }
    }
}
