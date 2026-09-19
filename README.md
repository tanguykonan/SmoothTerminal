<p align="center">
  <img src="https://raw.githubusercontent.com/odb/official-bash-logo/master/assets/Logos/Icons/PNG/512x512.png" width="140px" alt="SmoothTerminal Logo">
</p>

<h1 align="center">SmoothTerminal</h1>

<p align="center">
  <b>Aliases and automation kits to help Windows users transition smoothly to the Linux terminal.</b>
</p>

<p align="center">
  <a href="./LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License"></a>
  <img src="https://img.shields.io/badge/OS-Linux%20(Ubuntu%20|%20Debian%20|%20Kali%20|%20Fedora%20|%20Arch%20|%20Alpine)-informational.svg" alt="Linux Distros">
  <img src="https://img.shields.io/badge/Shell-Bash%20|%20Zsh-success.svg" alt="Shells">
</p>

---

## Overview

**SmoothTerminal** brings familiar Windows **CMD** and **PowerShell** commands to Linux terminals. It offers safe, non-destructive aliases and developer kits compatible with all major distributions.

---

## Quick Installation

Run the automatic installer:

```bash
bash install.sh
```

To uninstall cleanly at any time:

```bash
sh uninstall.sh
```

---

## Quick Examples

```bash
cls          # Runs 'clear'
dir          # Runs 'ls -al'
ipconfig     # Runs 'ip a'
tasklist     # Runs 'ps aux'
Get-UserInfo # Runs 'whoami'
```

 **For the complete list of supported commands, check [REFERENCE.md](./REFERENCE.md).**

---

## Developer Kits

Automated installation scripts for essential tools across all distributions:

- **Podman**: `sh kits/install-podman.sh`
- **Docker**: `sh kits/install-docker.sh`

---

## Contributing & License

- Want to contribute? Check [CONTRIBUTING.md](./CONTRIBUTING.md).
- Licensed under the [MIT License](./LICENSE).
