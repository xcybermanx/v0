#!/bin/bash
# menu-status.sh
source /usr/bin/menu-lib.sh
clear
echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║${NC}                    ${WHITE}SYSTEM STATUS${NC}                          ${CYAN}║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════════════════════════════╝${NC}"; echo

for svc in ssh dropbear stunnel4 nginx fail2ban cron; do
  if systemctl is-active --quiet "$svc"; then
    green "$(printf '%-12s' "$svc"): Running"
  else
    red "$(printf '%-12s' "$svc"): Stopped"
  fi
done
echo
for ws in ws-dropbear ws-stunnel ws-ovpn; do
  if systemctl is-active --quiet "$ws"; then
    green "$(printf '%-12s' "$ws"): Running"
  else
    red "$(printf '%-12s' "$ws"): Stopped"
  fi
done
echo
read -n 1 -s -r -p "Press any key to return..."
