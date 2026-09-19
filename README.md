<p align="center"><img src="https://raw.githubusercontent.com/odb/official-bash-logo/master/assets/Logos/Icons/PNG/512x512.png" width="200px"></p>

<h1 align="center">SmoothTerminal</h1>
<p align="center"><b>Aliases to help Windows users transition smoothly to the Linux terminal.<br>Des alias pour faciliter la transition des utilisateurs Windows vers le terminal Linux.</b></p>

<p align="center">
  <a href="./LICENSE"><img src="https://img.shields.io/badge/license-MIT-License.svg"></a>
</p>

---

## Overview / Présentation

**English**  
SmoothTerminal provides a set of aliases and scripts to help users coming from Windows find their familiar commands (cls, dir, copy, etc.) on a Linux terminal. The goal is to make the transition easier and more intuitive.

**Français**  
SmoothTerminal est un ensemble d'alias et de scripts pour permettre aux utilisateurs venant de Windows de retrouver leurs commandes habituelles (cls, dir, copy, etc.) sur un terminal Linux. L'objectif est de rendre la prise en main plus simple et intuitive.

---

## Installation / Installation

**English**
1. Clone the repository or download the files.
2. Place the `WinToLinux.sh` file in your home directory.
3. Add the following line at the end of your `.bashrc` or `.zshrc`:
   ```bash
   source ~/WinToLinux.sh
   ```
4. Reload your terminal or run `source ~/.bashrc` (or `source ~/.zshrc`).

An automatic installation script (`install.sh`) is also available to simplify the process.

**Français**
1. Clonez le dépôt ou téléchargez les fichiers.
2. Placez le fichier `WinToLinux.sh` dans votre dossier personnel.
3. Ajoutez la ligne suivante à la fin de votre `.bashrc` ou `.zshrc` :
   ```bash
   source ~/WinToLinux.sh
   ```
4. Rechargez votre terminal ou exécutez `source ~/.bashrc` (ou `source ~/.zshrc`).

Un script d'installation automatique (`install.sh`) est également disponible pour simplifier la procédure.

---

## Example aliases / Exemples d'alias

```bash
cls -----------------------> 'clear'
Get-UserInfo --------------> 'whoami'  
```
## Information

**English**
Spaced commands such as "net user" in Windows should be used with a short stroke.
**Français**
Les commandes espacées telles que « utilisateur net » dans Windows doivent être utilisées avec un trait court.

Exemple/Example:
```ps1
net-user ---> 'net user'
```
---

## Uninstall / Désinstallation

**English**  
A script `uninstall.sh` is provided to cleanly remove the aliases and configuration changes from your shell file.

**Français**  
Un script `uninstall.sh` est fourni pour retirer proprement les alias et les modifications du fichier de configuration du shell.

---

## License / Licence

**English**  
This project is licensed under the [GNU GPL v3](./LICENSE). You are free to use, modify, and redistribute it under the terms of this license. For more information, see the [LICENSE](./LICENSE) file or the official page: https://www.gnu.org/licenses/gpl-3.0.html

**Français**  
Ce projet est distribué sous licence [GNU GPL v3](./LICENSE). Vous êtes libre de l'utiliser, le modifier et le redistribuer selon les termes de cette licence. Pour plus d'informations, consultez le fichier [LICENSE](./LICENSE) ou la page officielle : https://www.gnu.org/licenses/gpl-3.0.html