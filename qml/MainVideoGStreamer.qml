import QtQuick 2.12
import QtGraphicalEffects 1.12

import org.freedesktop.gstreamer.GLVideoItem 1.0;

GstGLVideoItem {
    anchors.fill: parent
    id: mainVideoGStreamer
    objectName: "mainVideoGStreamer"

    Text {
        id: watermark
        z: 2.0
        color: "#89ffffff"
        visible: !settings.hide_watermark
        font.pixelSize: 18
        text: "Do not fly with this app! Video is not stable yet!"
        horizontalAlignment: Text.AlignHCenter
        height: 24
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 96
    }

    Glow {
        anchors.fill: watermark
        visible: !settings.hide_watermark
        radius: 3
        samples: 17
        color: "black"
        source: watermark
    }
}
