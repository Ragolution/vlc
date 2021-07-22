/*****************************************************************************
 * Copyright (C) 2021 VLC authors and VideoLAN
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * ( at your option ) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/

import QtQuick 2.11
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0

import org.videolan.vlc 0.1

import "qrc:///widgets/" as Widgets
import "qrc:///style/"
import "qrc:///util/Helpers.js" as Helpers


Widgets.AnimatedBackground {
    implicitWidth: fbLabel.width + VLCStyle.focus_border * 2
    implicitHeight: fbLabel.height + VLCStyle.focus_border * 2

    activeBorderColor: colors.bgFocus

    property bool paintOnly: false
    property VLCColors colors: VLCStyle.colors

    Widgets.MenuLabel {
        id: fbLabel

        anchors.centerIn: parent

        text: i18n.qtr("WIDGET\nNOT\nFOUND")
        horizontalAlignment: Text.AlignHCenter

        color: colors.text
    }
}
