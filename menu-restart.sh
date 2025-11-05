#!/bin/bash
# menu-restart.sh
source /usr/bin/menu-lib.sh
while true; do
  clear
  echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
  echo -e "${CYAN}║${NC}                    ${WHITE}RESTART SERVICES${NC}                       ${CYAN}║${NC}"
  echo -e "${CYAN}╚══════════════════════════════════════════════════════════════╝${NC}"; echo
  echo -e "${BLUE}┌─────────────────────────────────────────────────────────────┐${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}1)${NC} ${WHITE}Restart All Services${NC}                               ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}2)${NC} ${WHITE}Restart SSH Only${NC}                                   ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}3)${NC} ${WHITE}Restart Dropbear Only${NC}                              ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}4)${NC} ${WHITE}Restart Stunnel Only${NC}                               ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}5)${NC} ${WHITE}Restart Nginx Only${NC}                                 ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}                                                    ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${RED}0)${NC} ${WHITE}Back to Main Menu${NC}                                 ${BLUE}│${NC}"
  echo -e "${BLUE}└─────────────────────────────────────────────────────────────┘${NC}"; echo
  read -p "Select option [0-5]: " choice
  case $choice in
    1)
      for s in ssh dropbear stunnel4 nginx fail2ban cron ws-dropbear ws-stunnel ws-ovpn; do
        systemctl restart "$s" 2>/dev/null && green "$s restarted" || red "$s failed"
      done
      read -n 1 -s -r -p "Done. Press any key..."
      ;;
    2) systemctl restart ssh && green "SSH restarted" || red "SSH failed" ;;
    3) systemctl restart dropbear && green "Dropbear restarted" || red "Dropbear failed" ;;
    4) systemctl restart stunnel4 && green "Stunnel restarted" || red "Stunnel failed" ;;
    5) systemctl restart nginx && green "Nginx restarted" || red "Nginx failed" ;;
    0) break ;;
    *) echo "Invalid option!"; sleep 2 ;;
  esac
done
