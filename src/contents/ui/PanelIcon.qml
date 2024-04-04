import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12
import org.kde.plasma.components 3.0 as PlasmaComponents3
import org.kde.plasma.core 2.0 as PlasmaCore

Item {
    id: root
    property string type: "icon"
    property var imageUrl: null
    property var imageRadius: null
    property var icon: null
    property real size: PlasmaCore.Units.iconSizes.medium

    Layout.preferredHeight: size
    Layout.preferredWidth: size

    onTypeChanged: () => {
        if ([ "icon", "image" ].includes(type)) {
            console.error("Panel icon type not supported")
        }
        if (type === "icon" && !icon) {
            console.error("Panel icon type is icon but no icon is set")
        }
        if (type === "image" && !imageUrl) {
            console.error("Panel icon type is image but no image url is set")
        }
    }

    PlasmaCore.IconItem {
        visible: type === "icon"
        id: iconComponent
        source: root.icon
        implicitHeight: root.size
        implicitWidth: root.size
    }

    Image {
        visible: type === "image"
        width: root.size
        height: root.size
        id: imageComponent
        anchors.fill: parent
        source: root.imageUrl
        fillMode: Image.PreserveAspectFit

        // enables round corners while the radius is set
        // ref: https://stackoverflow.com/questions/6090740/image-rounded-corners-in-qml
        layer.enabled: imageRadius > 0
        layer.effect: OpacityMask {
            maskSource: Item {
                width: imageComponent.width
                height: imageComponent.height
                Rectangle {
                    anchors.fill: parent
                    radius: imageRadius
                }
            }
        }
    }
}
