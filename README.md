<p align="center"><img src="https://raw.githubusercontent.com/odb/official-bash-logo/master/assets/Logos/Icons/PNG/512x512.png" width="200px"></p>

<h1 align="center">SmoothTerminal</h1>
<p align="center"><b>Aliases to help Windows users transition smoothly to the Linux terminal.</b></p>

<p align="center">
  <a href="./LICENSE"><img src="https://img.shields.io/badge/license-MIT-License.svg"></a>
</p>

---

## Overview

SmoothTerminal provides a set of aliases and scripts to help users coming from Windows find their familiar commands (cls, dir, copy, etc.) on a Linux terminal. The goal is to make the transition easier and more intuitive.

---

## Installation

1. Clone the repository or download the files.
2. Place the `WinToLinux.sh` file in your home directory.
3. Add the following line at the end of your `.bashrc` or `.zshrc`:
   ```bash
   source ~/WinToLinux.sh
   ```
4. Reload your terminal or run `source ~/.bashrc` (or `source ~/.zshrc`).

An automatic installation script (`install.sh`) is also available to simplify the process.

---

## Example aliases

```bash
cls -----------------------> 'clear'
Get-UserInfo --------------> 'whoami'  
```
## Information

Spaced commands such as "net user" in Windows should be used with a short stroke.
**Français**
Les commandes espacées telles que « utilisateur net » dans Windows doivent être utilisées avec un trait court.

Example:
```ps1
net-user ---> 'net user'
```
---

## Uninstall
 
A script `uninstall.sh` is provided to cleanly remove the aliases and configuration changes from your shell file.
