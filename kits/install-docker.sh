#!/bin/sh
set -e

# Handle sudo / root permissions
if [ "$(id -u)" -ne 0 ]; then
    if command -v sudo >/dev/null 2>&1; then
        SUDO="sudo"
    else
        echo "Error: This script requires root privileges or 'sudo'."
        exit 1
    fi
else
    SUDO=""
fi

echo "Installing Docker..."

# Installation based on distribution package manager
if command -v apk >/dev/null 2>&1; then
    echo "Alpine Linux detected."
    $SUDO apk update
    $SUDO apk add docker docker-cli-compose
elif command -v pacman >/dev/null 2>&1; then
    echo "Arch Linux / Manjaro detected."
    $SUDO pacman -Sy --noconfirm docker docker-compose
else
    echo "Downloading official Docker installation script..."
    curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
    $SUDO sh /tmp/get-docker.sh
    rm -f /tmp/get-docker.sh
fi

# Add current user to docker group
CURRENT_USER="${SUDO_USER:-$USER}"
if [ -n "$CURRENT_USER" ] && [ "$CURRENT_USER" != "root" ]; then
    $SUDO usermod -aG docker "$CURRENT_USER" 2>/dev/null || $SUDO adduser "$CURRENT_USER" docker 2>/dev/null || true
    echo "[INFO] User '$CURRENT_USER' added to 'docker' group."
fi

# Start and enable docker service if systemd or OpenRC is present
if command -v systemctl >/dev/null 2>&1; then
    $SUDO systemctl enable --now docker 2>/dev/null || true
    echo "[OK] Docker service enabled via systemd."
elif command -v rc-service >/dev/null 2>&1; then
    $SUDO rc-update add docker boot 2>/dev/null || true
    $SUDO rc-service docker start 2>/dev/null || true
    echo "[OK] Docker service started via OpenRC."
fi

echo ""
echo "[OK] Docker installation completed successfully !"
echo "[INFO] To test Docker: docker run hello-world"
echo "[INFO] If you were just added to the docker group, restart your session or run: newgrp docker"