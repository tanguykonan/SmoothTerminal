#!/usr/bin/env bash
set -e

# Windows to Linux! (Install)
# This script is used to convert Windows commands to Linux commands
# It is used to help users to find the equivalent command in Linux
# ================================================================
# Author: @Nythique: https://github.com/Nythique
# ================================================================
# Project Name: SmoothTerminal
# Version: 1.0.0
# Operating System: Linux
# ================================================================

# Colors
GREEN='\033[0;32m'
RESET='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'

# Variables
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ALIAS_FILE="$SCRIPT_DIR/WinToLinux.sh"
TARGET="$HOME/WinToLinux.sh"

# Enable colors if terminal
if [ -t 1 ]; then
    COLOR_ON=true
else
    COLOR_ON=false
fi

# Functions
transition_effect() {
    echo
    echo -e "${BLUE}Windows ${YELLOW}>>> ${GREEN}Linux${RESET}"
    echo
    
    # Exemple de conversions
    local windows=(".... " ".... " ".... " ".... " ".... ")
    local linux=("025%" "050%" "075%" "099%" "100%")
    
    for ((i=0; i<${#windows[@]}; i++)); do
        echo -ne "${BLUE}${windows[$i]}${RESET}"
        for ((j=0; j<3; j++)); do
            echo -ne "${YELLOW} >${RESET}"
            sleep 0.1
        done
        echo -e " ${GREEN}${linux[$i]}${RESET}"
        sleep 0.3
    done
    
    echo
    echo -e "${GREEN}Conversion de commandes prête...${RESET}"
    sleep 1
    echo
}

cecho() {
    local text="$1"
    if $COLOR_ON; then
        local padding=$(printf '%*s' $(((${#text} + 20))))
        echo -e "${GREEN}"
        echo -e "╔${padding// /═}╗"
        echo -e "║  $text  ║"
        echo -e "╚${padding// /═}╝${RESET}"
    else
        echo "$text"
    fi
}

# Clear screen and show logo
# Fonction pour l'animation de démarrage
startup_animation() {
    clear
    
    # Effet de "chargement" du logo
    for ((i=1; i<=4; i++)); do
        clear
        case $i in
            1) echo -e "${BLUE}";;
            2) echo -e "${CYAN}";;
            3) echo -e "${YELLOW}";;
            4) echo -e "${GREEN}";;
        esac
        cat << EOF
 _____                 _   _     _____                    
|   __|_ _ ___ ___ ___| |_| |___|_   _|___ ___ _____ ___ 
|__   | | |  _| . | . |  _| |___| | | | -_|  _|     |_ -|
|_____|___|_| |___|___|_| |_|     |_| |___|_| |_|_|_|___|
EOF
        sleep 0.2
    done

    echo
    echo -e "${YELLOW}╔════════════════════════════════════════╗${RESET}"
    echo -e "${YELLOW}║${RESET}     ${BLUE}Windows${RESET} ${GREEN}Command Converter${RESET}        ${YELLOW}║${RESET}"
    echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
    echo

    # Exemples de conversion avec animation
    echo -e "${CYAN}Initializing command translations...${RESET}"
    sleep 0.2
    echo

    # Exemple de conversions
    local windows=(".... " ".... " ".... " ".... " ".... ")
    local linux=("025%" "050%" "075%" "099%" "100%")
    
    for ((i=0; i<${#windows[@]}; i++)); do
        echo -ne "  ${BLUE}${windows[$i]}${RESET} "
        for ((j=0; j<3; j++)); do
            echo -ne "${YELLOW}▶${RESET}"
            sleep 0.05
        done
        echo -e " ${GREEN}${linux[$i]}${RESET}"
        sleep 0.1
    done

    echo
    echo -e "${YELLOW}╔════════════════════════════════════════╗${RESET}"
    echo -e "${YELLOW}║${RESET}    ${GREEN}Command Conversion Ready !${RESET}         ${YELLOW}║${RESET}"
    echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
    echo
    sleep 0.3
}

# Lancer l'animation de démarrage
startup_animation

clear
# Installation process
echo -e "\n${YELLOW}╔════════════════════════════════════════╗${RESET}"
echo -e "${YELLOW}║${RESET}        ${CYAN}Shell Detection${RESET}                ${YELLOW}║${RESET}"
echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
echo

sleep 0.1
CURRENT_SHELL="$(basename "${SHELL:-}")"

if [ "$CURRENT_SHELL" = "zsh" ] || [ -n "${ZSH_VERSION:-}" ]; then
    RC_FILE="$HOME/.zshrc"
    echo -e " ${GREEN}✓${RESET} Zsh shell detected"
    sleep 0.1
elif [ "$CURRENT_SHELL" = "bash" ] || [ -n "${BASH_VERSION:-}" ]; then
    RC_FILE="$HOME/.bashrc"
    echo -e " ${GREEN}✓${RESET} Bash shell detected"
    sleep 0.1
elif [ -f "$HOME/.zshrc" ]; then
    RC_FILE="$HOME/.zshrc"
    echo -e " ${GREEN}✓${RESET} Zsh configuration found (~/.zshrc)"
    sleep 0.1
else
    RC_FILE="$HOME/.bashrc"
    echo -e " ${YELLOW}!${RESET} Defaulting to Bash shell (~/.bashrc)"
    sleep 0.1
fi
touch "$RC_FILE"
sleep 0.2

clear
# Displaying the installation header
echo -e "\n${YELLOW}╔════════════════════════════════════════╗${RESET}"
echo -e "${YELLOW}║${RESET}        ${CYAN}Installing Files${RESET}               ${YELLOW}║${RESET}"
echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
echo

# Animation de copie
echo -ne " ${BLUE}⟳${RESET} Copying files"
for ((i=0; i<3; i++)); do
    echo -ne "."
    sleep 0.2
done
cp "$ALIAS_FILE" "$TARGET"
echo -e "\r ${GREEN}✓${RESET} Files copied successfully        "
sleep 0.5

echo -e "\n${YELLOW}╔════════════════════════════════════════╗${RESET}"
echo -e "${YELLOW}║${RESET}        ${CYAN}Configuration${RESET}                  ${YELLOW}║${RESET}"
echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
echo

echo -ne " ${BLUE}⟳${RESET} Setting up shell configuration"
for ((i=0; i<3; i++)); do
    echo -ne "."
    sleep 0.2
done

if ! grep -Fxq "source ~/WinToLinux.sh" "$RC_FILE"; then
    echo "source ~/WinToLinux.sh" >> "$RC_FILE"
    echo -e "\r ${GREEN}✓${RESET} Shell configuration updated ($RC_FILE)        "
else
    echo -e "\r ${YELLOW}!${RESET} Configuration already exists in $RC_FILE        "
fi
sleep 0.1

# Final message with style
clear
echo -e "\n${GREEN}╔════════════════════════════════════════╗${RESET}"
echo -e "${GREEN}║${RESET}       ${CYAN}Installation Complete !${RESET}           ${GREEN}║${RESET}"
echo -e "${GREEN}╚════════════════════════════════════════╝${RESET}"

# Reminder to apply changes
if [ -f "$RC_FILE" ]; then
    source "$RC_FILE" 2>/dev/null || true
fi

echo -e "${YELLOW}╔════════════════════════════════════════╗${RESET}"
echo -e "${YELLOW}║${RESET}    ${GREEN}Happy command converting!${RESET}          ${YELLOW}║${RESET}"
echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
echo
echo -e " ${CYAN}To apply the changes immediately, run:${RESET}"
echo -e "   ${GREEN}source $RC_FILE${RESET}"
echo -e " ${CYAN}or simply restart your terminal.${RESET}\n"
