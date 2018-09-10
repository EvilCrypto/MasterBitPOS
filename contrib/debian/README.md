
Debian
====================
This directory contains files used to package masterbitposd/masterbitpos-qt
for Debian-based Linux systems. If you compile masterbitposd/masterbitpos-qt yourself, there are some useful files here.

## masterbitpos: URI support ##


masterbitpos-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install masterbitpos-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your masterbitposqt binary to `/usr/bin`
and the `../../share/pixmaps/masterbitpos128.png` to `/usr/share/pixmaps`

masterbitpos-qt.protocol (KDE)

