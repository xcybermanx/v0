#!/bin/bash
# menu-ssh.sh
source /usr/bin/menu-lib.sh
while true; do
  clear
  echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
  echo -e "${CYAN}║${NC}                    ${WHITE}SSH & VPN MANAGEMENT${NC}                   ${CYAN}║${NC}"
  echo -e "${CYAN}╚══════════════════════════════════════════════════════════════╝${NC}"; echo
  echo -e "${BLUE}┌─────────────────────────────────────────────────────────────┐${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}1)${NC} ${WHITE}Create New User${NC}                                    ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}2)${NC} ${WHITE}Create Trial User${NC}                                  ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}3)${NC} ${WHITE}Renew User${NC}                                         ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}4)${NC} ${WHITE}Delete User${NC}                                        ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}5)${NC} ${WHITE}Check User${NC}                                         ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}6)${NC} ${WHITE}List All Users${NC}                                     ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}7)${NC} ${WHITE}Delete Expired Users${NC}                               ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}8)${NC} ${WHITE}Auto Kill Users${NC}                                    ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${YELLOW}9)${NC} ${WHITE}Check User Limits${NC}                                  ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}                                                    ${BLUE}│${NC}"
  echo -e "${BLUE}│${NC}  ${RED}0)${NC} ${WHITE}Back to Main Menu${NC}                                 ${BLUE}│${NC}"
  echo -e "${BLUE}└─────────────────────────────────────────────────────────────┘${NC}"; echo
  read -p "Select option [0-9]: " choice
  case $choice in
    1) /usr/bin/usernew ;;
    2) /usr/bin/trial ;;
    3) /usr/bin/renew ;;
    4) /usr/bin/hapus ;;
    5) /usr/bin/cek ;;
    6) /usr/bin/member ;;
    7) /usr/bin/delete ;;
    8) /usr/bin/autokill ;;
    9) /usr/bin/ceklim ;;
    0) break ;;
    *) echo "Invalid option!"; sleep 2
