# Contributing to SmoothTerminal

Thank you for your interest in contributing to SmoothTerminal! This project aims to provide safe, intuitive, and cross-distribution aliases and tools for users transitioning from Windows to Linux.

---

## Code of Conduct

Please be respectful, constructive, and helpful when participating in discussions, reporting issues, or opening pull requests.

---

## How to Contribute

### 1. Reporting Bugs & Issues
- Check existing issues before opening a new one.
- Provide clear reproduction steps, including your Linux distribution (Ubuntu, Kali, Fedora, Arch, Alpine, etc.) and your active shell (`bash --version` or `zsh --version`).

### 2. Suggesting New Aliases
When proposing new CMD or PowerShell aliases:
- **Safety First**: Never overwrite critical standard POSIX/Linux binaries (e.g., do not alias over `find`, `rmdir`, `cat`, etc.).
- **Cross-Shell Compatibility**: Ensure the alias or function behaves consistently in both **Bash** and **Zsh**.
- **Multi-Distro Support**: If a command relies on an external utility (e.g. `traceroute`, `xclip`, `debsums`), use dynamic detection with `command -v` to support different distributions.

### 3. Adding New Kits
When contributing a new script under `kits/`:
- Use POSIX-compliant shell scripting (`#!/bin/sh` with `set -e`).
- Automatically detect the distribution's package manager (`apt-get`, `dnf`, `pacman`, `zypper`, `apk`).
- Safely handle `sudo` permissions when not running as root.
- Clean up any temporary files after execution (e.g., in `/tmp`).

---

## Code Style & Guidelines

- **No ASCII Banner Headers**: Avoid large header blocks or decorative ASCII art in scripts.
- **Clear & Concise Comments**: Write code comments in **English**, keeping them short and informative.
- **Indentation**: Use 4 spaces for indentation in scripts and Markdown documents.

---

## Development & Testing Workflow

1. **Fork & Clone** the repository:
   ```bash
   git clone https://github.com/your-username/SmoothTerminal.git
   cd SmoothTerminal
   ```
2. **Create a Feature Branch**:
   ```bash
   git checkout -b feature/new-alias-or-kit
   ```
3. **Test your changes**:
   - Test in both **Bash** and **Zsh**.
   - Verify that `bash install.sh` and `sh uninstall.sh` work without errors.
4. **Commit & Push**:
   ```bash
   git commit -m "feat: add support for <feature>"
   git push origin feature/new-alias-or-kit
   ```
5. **Open a Pull Request** with a detailed description of your changes.
