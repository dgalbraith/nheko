// SPDX-FileCopyrightText: 2021 Nheko Contributors
//
// SPDX-License-Identifier: GPL-3.0-or-later

import QtQuick 2.5
import QtQuick.Controls 2.3
import im.nheko 1.0

TextEdit {
    id: r
    textFormat: TextEdit.RichText
    readOnly: true
    focus: false
    wrapMode: Text.Wrap
    selectByMouse: !Settings.mobileMode
    // this always has to be enabled, otherwise you can't click links anymore!
    //enabled: selectByMouse
    color: Nheko.colors.text
    onLinkActivated: Nheko.openLink(link)
    ToolTip.visible: hoveredLink
    ToolTip.text: hoveredLink

    CursorShape {
        anchors.fill: parent
        cursorShape: hoveredLink ? Qt.PointingHandCursor : Qt.ArrowCursor
    }

    Component.onCompleted: {
        TimelineManager.fixImageRendering(r.textDocument, r)
    }

}
