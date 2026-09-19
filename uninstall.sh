#!/bin/sh
set -e

GREEN='\033[0;32m'
RESET='\033[0m'
TARGET="$HOME/WinToLinux.sh"

COLOR_ON=false
if [ -t 1 ]; then COLOR_ON=true; fi

cecho() {
  if $COLOR_ON; then
    echo "${GREEN}$1${RESET}"
  else
    echo "$1"
  fi
}

cecho "Starting SmoothTerminal uninstallation..."

# Remove alias file
if [ -f "$TARGET" ]; then
  rm -f "$TARGET"
  cecho "[OK] Removed $TARGET"
else
  cecho "[INFO] No file found at $TARGET"
fi

REMOVED_ANY=false
# Clean up shell configuration files
for rc in "$HOME/.bashrc" "$HOME/.zshrc" "$HOME/.profile" "$HOME/.bash_profile" "$HOME/.ashrc"; do
  if [ -f "$rc" ] && grep -Fq "WinToLinux.sh" "$rc"; then
    grep -v "WinToLinux\.sh" "$rc" | grep -v "# SmoothTerminal aliases" > "$rc.tmp" && mv "$rc.tmp" "$rc"
    cecho "[OK] Cleaned configuration from $rc"
    REMOVED_ANY=true
  fi
done

if ! $REMOVED_ANY; then
  cecho "[INFO] No shell configuration lines found"
fi

echo ""
cecho "[OK] SmoothTerminal uninstalled successfully."
cecho "[INFO] Please restart your terminal to apply changes."
