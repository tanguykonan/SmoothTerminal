alias cls='clear'                  # Clear screen
alias dir='ls -al'                 # List files and directories
alias copy='cp'                    # Copy a file/directory
alias xcopy='cp -r'                # Copy recursively
alias move='mv'                    # Move / Rename
alias ren='mv'                     # Rename
alias del='rm -i'                  # Delete (with confirmation)
alias erase='rm'                   # Delete
alias md='mkdir'                   # Create a directory
alias rd='rmdir'                   # Remove an empty directory
alias tree='tree -C'               # Display directory tree
alias attrib='lsattr'              # File attributes
alias chdir='cd'                   # Change directory
alias pushd='pushd'                # Push directory onto stack
alias popd='popd'                  # Pop directory from stack
alias type='cat'                   # Display file contents
alias more='less'                  # Page-by-page display
alias edit='${EDITOR:-nano}'       # Text editor
alias notepad='${EDITOR:-nano}'    # Text editor
alias path='echo "$PATH"'          # Display PATH environment variable
alias findstr='grep'               # Search string in files
alias ipconfig='ip a'              # Display network configuration
alias ifconfig='ip a'              # Display network configuration
alias ping='ping'                  # Test network connection

# Routing tool detection
if command -v traceroute >/dev/null 2>&1; then
    alias tracert='traceroute'
elif command -v tracepath >/dev/null 2>&1; then
    alias tracert='tracepath'
fi

alias netstat='ss -tuln'           # Modern network statistics
alias arp='ip neigh'               # Modern ARP table
alias hostname='hostname'          # Machine hostname
alias whoami='whoami'              # Current user
alias tasklist='ps aux'            # List running processes
alias taskkill='kill'              # Terminate a process

# System monitor
if command -v htop >/dev/null 2>&1; then
    alias top='htop'
fi

alias free='free -h'               # Display memory usage
alias df='df -h'                   # Disk space
alias du='du -sh *'                # File and directory sizes
alias date='date'                  # Display current date
alias time='date +%T'              # Display current time
alias cal='cal'                    # Display calendar
alias shutdown='sudo shutdown now' # Shut down computer
alias restart='sudo reboot'        # Restart computer
alias exit='exit'                  # Exit shell
alias help='man'                   # Manual / Help
alias history='history'            # Command history

# Clear history (Bash and Zsh compatible)
if [ -n "${ZSH_VERSION:-}" ]; then
    alias clearhistory='fc -p'
else
    alias clearhistory='history -c'
fi

alias pwd='pwd'                    # Display current directory
alias where='which'                # Find executable path
alias ver='uname -a'               # System version
alias systeminfo='uname -a'        # System information
alias lsusb='lsusb'                # List USB devices
alias lspci='lspci'                # List PCI devices
alias lsblk='lsblk'                # List storage block devices
alias open='xdg-open'              # Open file / directory
alias explorer='xdg-open .'        # Open file manager in current directory

# Persistent environment variable setup
if [ -n "${ZSH_VERSION:-}" ]; then
    alias setx="echo 'export VAR=val' >> ~/.zshrc"
else
    alias setx="echo 'export VAR=val' >> ~/.bashrc"
fi

alias fc='diff'                    # Compare files
alias assoc='file'                 # Determine file type
alias color='tput setaf'           # Change text color
alias comp='diff'                  # Compare files
alias compact='gzip'               # Compress file
alias convert='convert'            # File conversion
alias copy-con='cat >'             # Create file from console input
alias diskcopy='dd'                # Clone disk
alias chkdsk='fsck'                # Check filesystem integrity
alias chkntfs='tune2fs'            # Check/configure filesystem parameters

# Multi-distro clipboard support
if command -v xclip >/dev/null 2>&1; then
    alias clip='xclip -selection clipboard'
elif command -v wl-copy >/dev/null 2>&1; then
    alias clip='wl-copy'
elif command -v xsel >/dev/null 2>&1; then
    alias clip='xsel --clipboard --input'
fi

alias label='e2label'              # Label a partition
alias mode='stty'                  # Configure terminal settings
alias print='lpr'                  # Print a file
alias replace='rsync'              # Sync files
alias sc='systemctl'               # Service management
alias setlocal='export'            # Set local environment variable
alias sort='sort'                  # Sort file lines
alias subst='mount --bind'         # Bind mount a directory
alias verifier='dmesg'             # Display kernel logs
alias vol='lsblk'                  # Display volumes
alias w32tm='timedatectl'          # Configure system time
alias route='ip route'             # Display routing table
alias nslookup='nslookup'          # Query DNS
alias netsh='nmcli'                # Configure network
alias nbtstat='nmblookup'          # NetBIOS statistics
alias net-user='sudo useradd'      # Add user
alias net-user-mod='sudo usermod'  # Modify user
alias net-localgroup='sudo groupadd' # Add group
alias net-localgroup-mod='sudo groupmod' # Modify group
alias runas='sudo -u'              # Execute as another user
alias net-start='systemctl start'  # Start a service
alias net-stop='systemctl stop'    # Stop a service
alias net-pause='systemctl stop'   # Pause a service
alias net-continue='systemctl start' # Resume a service
alias sc-query='systemctl status'  # Service status
alias sc-stop='systemctl stop'     # Stop a service
alias sc-start='systemctl start'   # Start a service
alias sc-config='systemctl edit'   # Configure a service
alias diskpart='fdisk'             # Partition a disk
alias format='mkfs'                # Format a partition
alias mount='mount'                # Mount a filesystem
alias umount='umount'              # Unmount a filesystem

# System integrity verification
if command -v debsums >/dev/null 2>&1; then
    alias sfc='debsums'
elif command -v rpm >/dev/null 2>&1; then
    alias sfc='rpm -Va'
elif command -v pacman >/dev/null 2>&1; then
    alias sfc='pacman -Qk'
fi

alias msinfo32='lshw'              # Detailed system hardware info
alias start='xdg-open'             # Open file/application
alias logoff='pkill -KILL -u $USER' # Log off current user
alias pause='printf "Press [Enter] to continue..."; read -r _dummy' # Portable pause
alias title='echo -ne "\033]0;Title\007"' # Change terminal title

# PowerShell Aliases
alias Get-ChildItem='ls -al'        # List files and directories
alias Copy-Item='cp'                # Copy a file/directory
alias Move-Item='mv'                # Move / Rename
alias Remove-Item='rm -i'           # Remove (with confirmation)
alias Rename-Item='mv'              # Rename
alias Get-Content='cat'             # Display file contents
alias Set-Location='cd'             # Change directory
alias Push-Location='pushd'         # Push directory onto stack
alias Pop-Location='popd'           # Pop directory from stack
alias Get-Process='ps aux'          # List running processes
alias Stop-Process='kill'           # Terminate a process
alias Start-Process='xdg-open'      # Open file/application
alias Get-Date='date'               # Display current date
alias Get-History='history'         # Command history
alias Clear-Host='clear'            # Clear screen
alias Get-Location='pwd'            # Display current directory
alias Get-Command='which'           # Find executable path
alias Get-ComputerInfo='uname -a'   # System information
alias Get-DiskInfo='df -h'          # Disk space
alias Get-MemoryInfo='free -h'      # Memory info
alias Get-CPUInfo='lscpu'           # CPU information
alias Get-NetworkInfo='ip a'        # Network information
alias Get-UserInfo='whoami'         # Current user
alias Get-ServiceInfo='systemctl status' # Service status
alias Get-ProcessInfo='ps aux'      # Process information
