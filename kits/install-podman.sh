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

echo "Installing Podman & Podman Compose..."

# Distribution package manager detection and installation
if command -v apt-get >/dev/null 2>&1; then
    echo "Debian / Ubuntu / Kali based distribution detected."
    $SUDO apt-get update -y
    $SUDO apt-get install -y podman podman-compose
elif command -v dnf >/dev/null 2>&1; then
    echo "Fedora / RHEL / CentOS / Rocky based distribution detected."
    $SUDO dnf install -y podman podman-compose
elif command -v yum >/dev/null 2>&1; then
    echo "RedHat / CentOS (yum) based distribution detected."
    $SUDO yum install -y podman
elif command -v pacman >/dev/null 2>&1; then
    echo "Arch Linux / Manjaro based distribution detected."
    $SUDO pacman -Sy --noconfirm podman podman-compose
elif command -v zypper >/dev/null 2>&1; then
    echo "openSUSE based distribution detected."
    $SUDO zypper refresh
    $SUDO zypper install -y podman podman-compose
elif command -v apk >/dev/null 2>&1; then
    echo "Alpine Linux detected."
    $SUDO apk update
    $SUDO apk add podman podman-compose
else
    echo "Unsupported package manager. Please install Podman manually."
    exit 1
fi

echo ""
if command -v podman >/dev/null 2>&1; then
    podman --version
    echo "[OK] Podman installed successfully !"
    echo "[INFO] Podman works natively without root privileges (rootless mode)."
    echo "[INFO] You can test it by running: podman run hello-world"
else
    echo "[ERROR] Podman installation failed."
    exit 1
fi
