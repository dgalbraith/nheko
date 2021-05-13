// SPDX-FileCopyrightText: 2021 Nheko Contributors
//
// SPDX-License-Identifier: GPL-3.0-or-later

#pragma once

#include <QObject>
#include <QPalette>

class Nheko : public QObject
{
        Q_OBJECT

        Q_PROPERTY(QPalette colors READ colors NOTIFY colorsChanged)
        Q_PROPERTY(QPalette inactiveColors READ inactiveColors NOTIFY colorsChanged)
        Q_PROPERTY(int avatarSize READ avatarSize CONSTANT)

public:
        Nheko();

        QPalette colors() const;
        QPalette inactiveColors() const;

        int avatarSize() const { return 40; }

        Q_INVOKABLE void openLink(QString link) const;

signals:
        void colorsChanged();
};

