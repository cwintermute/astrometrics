for f in /home/seven/Desktop/*.desktop; do chmod +x "$f"; dbus-launch gio set -t string "$f" metadata::xfce-exe-checksum "$(sha256sum "$f" | awk '{print $1}')"; done
# Rename this file to prevent multiple runs lol
rm /home/seven/.config/autostart/fix_icons.desktop