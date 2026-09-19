# Windows to Linux! (alias)
# This script is used to convert Windows commands to Linux commands
# It is used to help users to find the equivalent command in Linux
# ================================================================
# Author: @Nythique: https://github.com/Nythique
# Portfolio: https://nythique.github.io
# License:  GNU AFFERO GENERAL PUBLIC LICENSE
# ================================================================
# Poject Name: SmoothTerminal
# Version: 1.0.0
# Operating System: Linux
# ================================================================
# ================================================================

# ================================================================
#                   Alias CMD classiques
# ================================================================
alias cls='clear'                  # Effacer l'écran
alias dir='ls -al'                 # Lister les fichiers/dossiers
alias copy='cp'                    # Copier un fichier/dossier
alias xcopy='cp -r'                # Copier récursivement
alias move='mv'                    # Déplacer/renommer
alias ren='mv'                     # Renommer
alias del='rm -i'                  # Supprimer (avec confirmation)
alias erase='rm'                   # Supprimer
alias md='mkdir'                   # Créer un dossier
alias rd='rmdir'                   # Supprimer un dossier vide
alias rmdir='rm -r'                # Supprimer un dossier (récursif)
alias tree='tree -C'               # Afficher l'arborescence
alias attrib='lsattr'              # Attributs de fichiers
alias chdir='cd'                   # Changer de dossier
alias pushd='pushd'                # Empiler un dossier
alias popd='popd'                  # Dépiler un dossier
alias type='cat'                   # Afficher le contenu d'un fichier
alias more='less'                  # Affichage page par page
alias edit='nano'                  # Éditeur de texte
alias notepad='nano'               # Éditeur de texte
alias path='echo $PATH'            # Afficher la variable PATH
alias findstr='grep'               # Rechercher une chaîne dans un fichier
alias find='grep'                  # Rechercher dans un fichier
alias ipconfig='ip a'              # Afficher la config réseau
alias ifconfig='ifconfig'          # Afficher la config réseau (ancienne syntaxe)
alias ping='ping'                  # Tester la connexion réseau
alias tracert='traceroute'         # Tracer une route réseau
alias netstat='netstat'            # Statistiques réseau
alias arp='arp'                    # Table ARP
alias hostname='hostname'          # Nom de la machine
alias whoami='whoami'              # Utilisateur courant
alias tasklist='ps aux'            # Lister les processus
alias taskkill='kill'              # Tuer un processus
alias top='htop'                   # Afficher l'utilisation système
alias free='free -h'               # Afficher la mémoire
alias df='df -h'                   # Espace disque
alias du='du -sh *'                # Taille des fichiers
alias date='date'                  # Afficher la date
alias time='date +%T'              # Afficher l'heure
alias cal='cal'                    # Calendrier
alias shutdown='sudo shutdown now' # Éteindre l'ordinateur
alias restart='sudo reboot'        # Redémarrer l'ordinateur
alias exit='exit'                  # Quitter le shell
alias help='man'                   # Aide/manuel
alias history='history'            # Historique des commandes
alias clearhistory='history -c'    # Effacer l'historique
alias pwd='pwd'                    # Afficher le dossier courant
alias where='which'                # Trouver le chemin d'un exécutable
alias ver='uname -a'               # Version du système
alias systeminfo='uname -a'        # Infos système
alias lsusb='lsusb'                # Lister les périphériques USB
alias lspci='lspci'                # Lister les périphériques PCI
alias lsblk='lsblk'                # Lister les périphériques de stockage
alias open='xdg-open'              # Ouvrir un fichier/dossier
alias explorer='xdg-open .'        # Ouvrir le gestionnaire de fichiers
if [ -n "${ZSH_VERSION:-}" ]; then
    alias setx="echo 'export VAR=val' >> ~/.zshrc" # Définir une variable d'environnement persistante (zsh)
else
    alias setx="echo 'export VAR=val' >> ~/.bashrc" # Définir une variable d'environnement persistante (bash)
fi
alias assoc='file'                 # Associer un type de fichier
alias color='tput setaf'           # Changer la couleur du texte
alias comp='diff'                  # Comparer des fichiers
alias compact='gzip'               # Compresser un fichier
alias convert='convert'            # Conversion de fichiers (ImageMagick)
alias copy-con='cat >'           # Créer un fichier depuis la console
alias diskcopy='dd'                # Copier un disque
alias chkdsk='fsck'                # Vérifier un système de fichiers
alias chkntfs='tune2fs'            # Vérifier/configurer le système de fichiers
alias clip='xclip -selection clipboard' # Copier dans le presse-papiers
alias label='e2label'              # Étiqueter une partition
alias mode='stty'                  # Configurer le terminal
alias print='lpr'                  # Imprimer un fichier
alias replace='rsync'              # Remplacer des fichiers
alias sc='systemctl'               # Gestion des services
alias setlocal='export'            # Définir une variable d'environnement locale
alias sort='sort'                  # Trier un fichier
alias subst='mount --bind'         # Monter un dossier
alias verifier='dmesg'             # Afficher les messages du noyau
alias vol='lsblk'                  # Afficher les volumes/disques
alias w32tm='timedatectl'          # Configurer l'heure système
alias route='ip route'             # Afficher/modifier la table de routage
alias nslookup='nslookup'          # Interroger le DNS
alias netsh='nmcli'                # Configurer le réseau
alias nbtstat='nmblookup'          # Statistiques NetBIOS
alias net-user='sudo useradd / sudo usermod' # Gestion des utilisateurs
alias net-localgroup='sudo groupadd / sudo groupmod' # Gestion des groupes
alias runas='sudo -u'              # Exécuter en tant qu'autre utilisateur
alias net-start='systemctl start' # Démarrer un service
alias net-stop='systemctl stop'   # Arrêter un service
alias net-pause='systemctl stop'  # Mettre en pause un service
alias net-continue='systemctl start' # Reprendre un service
alias sc-query='systemctl status' # Statut d'un service
alias sc-stop='systemctl stop'    # Arrêter un service
alias sc-start='systemctl start'  # Démarrer un service
alias sc-config='systemctl edit'  # Configurer un service
alias diskpart='fdisk'              # Partitionner un disque
alias format='mkfs'                 # Formater un disque/partition
alias mount='mount'                 # Monter un système de fichiers
alias umount='umount'               # Démonter un système de fichiers
alias sfc='debsums'                 # Vérifier l'intégrité des fichiers système
alias msinfo32='lshw'               # Informations système détaillées
alias start='xdg-open'              # Ouvrir un fichier/application
alias logoff='pkill -KILL -u $USER' # Déconnexion de l'utilisateur
alias pause='read -p "Press [Enter] to continue..."' # Pause dans le terminal
alias title='echo -ne "\033]0;Titre\007"' # Changer le titre du terminal

# ================================================================
#                   Alias PowerShell courants
# ================================================================
alias Get-ChildItem='ls -al'        # Lister les fichiers/dossiers
alias Copy-Item='cp'                # Copier un fichier/dossier
alias Move-Item='mv'                # Déplacer/renommer
alias Remove-Item='rm -i'           # Supprimer (avec confirmation)
alias Rename-Item='mv'              # Renommer
alias Get-Content='cat'             # Afficher le contenu d'un fichier
alias Set-Location='cd'             # Changer de dossier
alias Push-Location='pushd'         # Empiler un dossier
alias Pop-Location='popd'           # Dépiler un dossier
alias Get-Process='ps aux'          # Lister les processus
alias Stop-Process='kill'           # Tuer un processus
alias Start-Process='xdg-open'      # Ouvrir un fichier/application
alias Get-Date='date'               # Afficher la date
alias Get-History='history'         # Historique des commandes
alias Clear-Host='clear'            # Effacer l'écran
alias Get-Location='pwd'            # Afficher le dossier courant
alias Get-Command='which'           # Trouver le chemin d'un exécutable
alias Get-ComputerInfo='uname -a'   # Infos système
alias Get-DiskInfo='df -h'          # Espace disque
alias Get-MemoryInfo='free -h'      # Mémoire
alias Get-CPUInfo='lscpu'           # Informations CPU
alias Get-NetworkInfo='ip a'        # Informations réseau
alias Get-UserInfo='whoami'         # Utilisateur courant
alias Get-ServiceInfo='systemctl status' # Statut des services
alias Get-ProcessInfo='ps aux'      # Informations sur les processus
