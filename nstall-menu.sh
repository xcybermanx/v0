#!/bin/bash
# install-menu.sh
set -e
[[ $EUID -ne 0 ]] && { echo "Run as root"; exit 1; }

FILES="menu-main.sh menu-lib.sh menu-ssh.sh menu-status.sh menu-tools.sh menu-restart.sh"
for f in $FILES; do
  wget -q "https://raw.githubusercontent.com/xcybermanx/Projet_VPS/main/menu/$f" -O "/usr/bin/${f%.sh}"
  chmod +x "/usr/bin/${f%.sh}"
done

ln -sf /usr/bin/menu-main /usr/local/bin/menu
echo "✅ Menu installed. Type: menu"
