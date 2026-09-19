#!/usr/bin/env bash
if [ -z "${BASH_VERSION:-}" ]; then
    if command -v bash >/dev/null 2>&1; then
        exec bash "$0" "$@"
    fi
fi

set -e

# Colors
GREEN='\033[0;32m'
RESET='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'

# Paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 && pwd)"
ALIAS_FILE="$SCRIPT_DIR/WinToLinux.sh"
TARGET="$HOME/WinToLinux.sh"

startup_animation() {
    clear
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
        sleep 0.15
    done

    echo
    echo -e "${YELLOW}╔════════════════════════════════════════╗${RESET}"
    echo -e "${YELLOW}║${RESET}     ${BLUE}Windows${RESET} ${GREEN}Command Converter${RESET}        ${YELLOW}║${RESET}"
    echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
    echo
    echo -e "${CYAN}Initializing command translations...${RESET}"
    sleep 0.15
    echo

    local windows=(".... " ".... " ".... " ".... " ".... ")
    local linux=("025%" "050%" "075%" "099%" "100%")
    
    for ((i=0; i<${#windows[@]}; i++)); do
        echo -ne "  ${BLUE}${windows[$i]}${RESET} "
        for ((j=0; j<3; j++)); do
            echo -ne "${YELLOW}▶${RESET}"
            sleep 0.03
        done
        echo -e " ${GREEN}${linux[$i]}${RESET}"
        sleep 0.05
    done

    echo
    echo -e "${YELLOW}╔════════════════════════════════════════╗${RESET}"
    echo -e "${YELLOW}║${RESET}    ${GREEN}Command Conversion Ready !${RESET}         ${YELLOW}║${RESET}"
    echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
    echo
    sleep 0.2
}

startup_animation

clear
echo -e "\n${YELLOW}╔════════════════════════════════════════╗${RESET}"
echo -e "${YELLOW}║${RESET}        ${CYAN}Shell Detection${RESET}                ${YELLOW}║${RESET}"
echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
echo

CURRENT_SHELL="$(basename "${SHELL:-bash}")"
CONFIG_FILES=()

if [ "$CURRENT_SHELL" = "zsh" ] || [ -f "$HOME/.zshrc" ]; then
    CONFIG_FILES+=("$HOME/.zshrc")
    echo -e " ${GREEN}✓${RESET} Zsh configuration detected (~/.zshrc)"
fi

if [ "$CURRENT_SHELL" = "bash" ] || [ -f "$HOME/.bashrc" ]; then
    CONFIG_FILES+=("$HOME/.bashrc")
    echo -e " ${GREEN}✓${RESET} Bash configuration detected (~/.bashrc)"
fi

if [ ${#CONFIG_FILES[@]} -eq 0 ]; then
    if [ -f "$HOME/.profile" ]; then
        CONFIG_FILES+=("$HOME/.profile")
        echo -e " ${GREEN}✓${RESET} Profile configuration detected (~/.profile)"
    else
        CONFIG_FILES+=("$HOME/.bashrc")
        echo -e " ${YELLOW}!${RESET} Defaulting to ~/.bashrc"
    fi
fi
sleep 0.2

clear
echo -e "\n${YELLOW}╔════════════════════════════════════════╗${RESET}"
echo -e "${YELLOW}║${RESET}        ${CYAN}Installing Files${RESET}               ${YELLOW}║${RESET}"
echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
echo

echo -ne " ${BLUE}⟳${RESET} Copying files"
for ((i=0; i<3; i++)); do
    echo -ne "."
    sleep 0.1
done

if [ ! -f "$ALIAS_FILE" ]; then
    echo -e "\n ${YELLOW}!${RESET} Error: $ALIAS_FILE not found."
    exit 1
fi

cp "$ALIAS_FILE" "$TARGET"
echo -e "\r ${GREEN}✓${RESET} Files copied successfully to $TARGET        "
sleep 0.3

echo -e "\n${YELLOW}╔════════════════════════════════════════╗${RESET}"
echo -e "${YELLOW}║${RESET}        ${CYAN}Configuration${RESET}                  ${YELLOW}║${RESET}"
echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
echo

SOURCE_CMD='[ -f "$HOME/WinToLinux.sh" ] && source "$HOME/WinToLinux.sh"'

for rc in "${CONFIG_FILES[@]}"; do
    touch "$rc"
    if ! grep -Fq "WinToLinux.sh" "$rc"; then
        echo "" >> "$rc"
        echo "# SmoothTerminal aliases" >> "$rc"
        echo "$SOURCE_CMD" >> "$rc"
        echo -e " ${GREEN}✓${RESET} Shell configuration added to $rc"
    else
        echo -e " ${YELLOW}!${RESET} Configuration already exists in $rc"
    fi
done
sleep 0.2

clear
echo -e "\n${GREEN}╔════════════════════════════════════════╗${RESET}"
echo -e "${GREEN}║${RESET}       ${CYAN}Installation Complete !${RESET}           ${GREEN}║${RESET}"
echo -e "${GREEN}╚════════════════════════════════════════╝${RESET}"

echo -e "${YELLOW}╔════════════════════════════════════════╗${RESET}"
echo -e "${YELLOW}║${RESET}    ${GREEN}Happy command converting!${RESET}          ${YELLOW}║${RESET}"
echo -e "${YELLOW}╚════════════════════════════════════════╝${RESET}"
echo
echo -e " ${CYAN}To apply the changes immediately, run:${RESET}"
for rc in "${CONFIG_FILES[@]}"; do
    echo -e "   ${GREEN}source $rc${RESET}"
done
echo -e " ${CYAN}or simply restart your terminal.${RESET}\n"
