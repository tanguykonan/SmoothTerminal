# Windows to Linux! (Uninstall)
# This script is used to convert Windows commands to Linux commands
# It is used to help users to find the equivalent command in Linux
# ================================================================
# Author: @Nythique: https://github.com/Nythique
# ================================================================
# Poject Name: SmoothTerminal
# Version: 1.0.0
# Operating System: Linux
# ================================================================
# ================================================================


set -e
# ────────────────────────
GREEN='\033[0;32m'
RESET='\033[0m'
# ────────────────────────

ALIAS_FILE="WinToLinux.sh"
TARGET="$HOME/WinToLinux.sh"

COLOR_ON=false
if [ -t 1 ]; then COLOR_ON=true; fi

cecho() {
  if $COLOR_ON; then
    echo -e "${GREEN}$1${RESET}"
  else
    echo "$1"
  fi
}

cecho "============================================================"
cecho "=============> Starting uninstall of SmoothTerminal"
cecho "============================================================"

if [ -f "$TARGET" ]; then
  rm "$TARGET"
  cecho "======>[OK] Removed $TARGET"
else
  cecho "======>[INFO] No file to remove at $TARGET"
fi

REMOVED_ANY=false
for rc in "$HOME/.bashrc" "$HOME/.zshrc"; do
  if [ -f "$rc" ] && grep -Fxq "source ~/WinToLinux.sh" "$rc"; then
    sed -i.bak '/^source ~\/WinToLinux\.sh$/d' "$rc"
    cecho "======>[OK] Removed sourcing line from $rc"
    cecho "======>[INFO] Backup saved as $rc.bak"
    REMOVED_ANY=true
  fi
done

if ! $REMOVED_ANY; then
  cecho "======>[INFO] Sourcing line not found in ~/.bashrc or ~/.zshrc"
fi
clear
cecho "======>[END] Uninstall completed"
cecho "======>[INFO] Open a new terminal to apply changes"
