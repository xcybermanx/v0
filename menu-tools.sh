#!/bin/bash
# menu-tools.sh
source /usr/bin/menu-lib.sh
while true; do
  clear
  echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
  echo -e "${CYAN}║${NC}                    ${WHITE}SYSTEM TOOLS${NC}                           ${CYAN}║${NC}"
  echo -e "${CYAN}╚══════════════════════════════════════════════════════════════╝${NC}"; echo
  echo -e "${BLUE}┌─────────────────────────────────────────────────────────────┐${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}1)${NC} ${WHITE}Clear RAM Cache${NC}                                    ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}2)${NC} ${WHITE}Internet Speed Test${NC}                                ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}                                                    ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${RED}0)${NC} ${WHITE}Back to Main Menu${NC}                                 ${BLUE}│${NC}"
  echo -e "${BLUE}└─────────────────────────────────────────────────────────────┘${NC}"; echo
  read -p "Select option [0-2]: " choice
  case $choice in
    1) /usr/bin/clearcache ;;
    2) /usr/bin/speedtest ;;
    0) break ;;
    *) echo "Invalid option!"; sleep 2 ;;
  esac
done
