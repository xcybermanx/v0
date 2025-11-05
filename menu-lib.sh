#!/bin/bash
# menu-lib.sh
RED='\033[0;31m' GREEN='\033[0;32m' YELLOW='\033[0;33m' BLUE='\033[0;34m' CYAN='\033[0;36m' NC='\033[0m'
green() { echo -e "${GREEN}[✓]${NC} $*"; }  red() { echo -e "${RED}[✗]${NC} $*"; }
yellow() { echo -e "${YELLOW}[!]${NC} $*"; } blue() { echo -e "${BLUE}[i]${NC} $*"; }

get_server_info(){
  local ip=$(curl -s ipinfo.io/ip 2>/dev/null || echo "Unknown")
  local hostname=$(hostname)
  echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
  echo -e "${CYAN}║${NC}                    ${WHITE}GX TUNNEL VPS MANAGER${NC}                    ${CYAN}║${NC}"
  echo -e "${CYAN}║${NC}                    ${YELLOW}Version 3.0 - Modular${NC}                      ${CYAN}║${NC}"
  echo -e "${CYAN}╠══════════════════════════════════════════════════════════════╣${NC}"
  echo -e "${CYAN}║${NC} ${WHITE}Server IP:${NC} $ip"
  echo -e "${CYAN}║${NC} ${WHITE}Hostname:${NC} $hostname"
  echo -e "${CYAN}╚══════════════════════════════════════════════════════════════╝${NC}"
}

main_menu(){
  while true; do
    clear; get_server_info; echo
    echo -e "${BLUE}┌─────────────────────────────────────────────────────────────┐${NC}"
    echo -e "${BLUE}│${NC}                    ${WHITE}MAIN MENU${NC}                           ${BLUE}│${NC}"
    echo -e "${BLUE}├─────────────────────────────────────────────────────────────┤${NC}"
    echo -e "${BLUE}│${NC}  ${YELLOW}1)${NC} ${WHITE}SSH Management${NC}                                     ${BLUE}│${NC}"
    echo -e "${BLUE}│${NC}  ${YELLOW}2)${NC} ${WHITE}System Status${NC}                                      ${BLUE}│${NC}"
    echo -e "${BLUE}│${NC}  ${YELLOW}3)${NC} ${WHITE}System Tools${NC}                                       ${BLUE}│${NC}"
    echo -e "${BLUE}│${NC}  ${YELLOW}4)${NC} ${WHITE}Restart Services${NC}                                   ${BLUE}│${NC}"
    echo -e "${BLUE}│${NC}  ${YELLOW}0)${NC} ${WHITE}Exit${NC}                                              ${BLUE}│${NC}"
    echo -e "${BLUE}└─────────────────────────────────────────────────────────────┘${NC}"
    echo
    read -p "Select option [0-4]: " choice
    case $choice in
      1) bash /usr/bin/menu-ssh.sh ;;
      2) bash /usr/bin/menu-status.sh ;;
      3) bash /usr/bin/menu-tools.sh ;;
      4) bash /usr/bin/menu-restart.sh ;;
      0) echo "Goodbye!"; exit 0 ;;
      *) echo "Invalid option!"; sleep 1 ;;
    esac
  done
}
