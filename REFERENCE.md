# Commands Reference Windows To Linux 

## Reference in English 

| Windows Command (cmd/PowerShell) | Linux Equivalent                       | Description                         |
|----------------------------------|----------------------------------------|-------------------------------------|
| cls                              | clear                                  | Clear the screen                    |
| dir                              | ls -al                                 | List files/directories              |
| copy                             | cp                                     | Copy a file/directory               |
| xcopy                            | cp -r                                  | Copy recursively                    |
| move                             | mv                                     | Move/rename a file/directory        |
| ren                              | mv                                     | Rename a file/directory             |
| del                              | rm -i                                  | Delete (with confirmation)          |
| erase                            | rm                                     | Delete a file/directory             |
| md                               | mkdir                                  | Create a directory                  |
| rd                               | rmdir                                  | Remove an empty directory           |
| rmdir                            | rm -r                                  | Remove a directory (recursive)      |
| tree                             | tree -C                                | Display directory tree              |
| attrib                           | lsattr                                 | File attributes                     |
| chdir                            | cd                                     | Change directory                    |
| cd..                             | cd ..                                  | Go up one directory                 |
| cd\                              | cd /                                   | Go to root directory                |
| pushd                            | pushd                                  | Push directory onto stack           |
| popd                             | popd                                   | Pop directory from stack            |
| type                             | cat                                    | Display file content                |
| more                             | less                                   | Paginate output                     |
| edit                             | nano                                   | Text editor                         |
| notepad                          | nano                                   | Text editor                         |
| path                             | echo $PATH                             | Show PATH variable                  |
| findstr                          | grep                                   | Search for string in file           |
| find                             | grep                                   | Search in file                      |
| ipconfig                         | ip a                                   | Show network config                 |
| ifconfig                         | ifconfig                               | Show network config (legacy)        |
| ping                             | ping                                   | Test network connection             |
| tracert                          | traceroute                             | Trace network route                 |
| netstat                          | netstat                                | Network statistics                  |
| arp                              | arp                                    | ARP table                           |
| hostname                         | hostname                               | Show computer name                  |
| whoami                           | whoami                                 | Show current user                   |
| tasklist                         | ps aux                                 | List processes                      |
| taskkill                         | kill                                   | Kill a process                      |
| top                              | htop                                   | Show system usage                   |
| free                             | free -h                                | Show memory usage                   |
| df                               | df -h                                  | Disk space usage                    |
| du                               | du -sh *                               | File sizes                          |
| date                             | date                                   | Show date                           |
| time                             | date +%T                               | Show time                           |
| cal                              | cal                                    | Calendar                            |
| shutdown                         | sudo shutdown now                      | Shutdown computer                   |
| restart                          | sudo reboot                            | Reboot computer                     |
| exit                             | exit                                   | Exit shell                          |
| help                             | man                                    | Help/manual                         |
| history                          | history                                | Command history                     |
| clearhistory                     | history -c                             | Clear command history               |
| pwd                              | pwd                                    | Show current directory              |
| where                            | which                                  | Find executable path                |
| ver                              | uname -a                               | System version                      |
| systeminfo                       | uname -a                               | System info                         |
| lsusb                            | lsusb                                  | List USB devices                    |
| lspci                            | lspci                                  | List PCI devices                    |
| lsblk                            | lsblk                                  | List block devices                  |
| open                             | xdg-open                               | Open file/directory                 |
| explorer                         | xdg-open .                             | Open file manager                   |
| setx                             | echo 'export VAR=val' >>~/.bashrc      | Set persistent environment variable |
| fc                               | diff                                   | Compare files                       |
| assoc                            | file                                   | File association                    |
| color                            | tput setaf                             | Set text color                      |
| comp                             | diff                                   | Compare files                       |
| compact                          | gzip                                   | Compress file                       |
| convert                          | convert                                | File conversion (ImageMagick)       |
| copy con                         | cat >                                  | Create file from console            |
| diskcopy                         | dd                                     | Copy disk                           |
| chkdsk                           | fsck                                   | Check filesystem                    |
| chkntfs                          | tune2fs                                | Check/configure filesystem          |
| clip                             | xclip -selection clipboard             | Copy to clipboard                   |
| label                            | e2label                                | Label a partition                   |
| mode                             | stty                                   | Configure terminal                  |
| print                            | lpr                                    | Print file                          |
| replace                          | rsync                                  | Replace files                       |
| sc                               | systemctl                              | Service management                  |
| setlocal                         | export                                 | Set local environment variable      |
| sort                             | sort                                   | Sort file                           |
| subst                            | mount --bind                           | Mount directory                     |
| verifier                         | dmesg                                  | Show kernel messages                |
| vol                              | lsblk                                  | Show volumes/disks                  |
| w32tm                            | timedatectl                            | Set system time                     |
| route                            | ip route                               | Show/modify routing table           |
| nslookup                         | nslookup                               | DNS lookup                          |
| netsh                            | nmcli                                  | Network configuration               |
| nbtstat                          | nmblookup                              | NetBIOS statistics                  |
| net user                         | sudo useradd / sudo usermod            | User management                     |
| net localgroup                   | sudo groupadd / sudo groupmod          | Group management                    |
| runas                            | sudo -u                                | Run as another user                 |
| net start                        | systemctl start                        | Start a service                     |
| net stop                         | systemctl stop                         | Stop a service                      |
| net pause                        | systemctl stop                         | Pause a service                     |
| net continue                     | systemctl start                        | Resume a service                    |
| sc query                         | systemctl status                       | Service status                      |
| sc stop                          | systemctl stop                         | Stop a service                      |
| sc start                         | systemctl start                        | Start a service                     |
| sc config                        | systemctl edit                         | Configure a service                 |
| diskpart                         | fdisk / parted                         | Partition disk                      |
| format                           | mkfs                                   | Format disk/partition               |
| mount                            | mount                                  | Mount filesystem                    |
| umount                           | umount                                 | Unmount filesystem                  |
| sfc                              | debsums                                | Check system file integrity         |
| msinfo32                         | lshw                                   | Detailed system info                |
| start                            | xdg-open                               | Open file/application               |
| logoff                           | pkill -KILL -u $USER                   | Log off user                        |
| pause                            | read -p "Press [Enter] to continue..." | Pause in terminal                   |
| title                            | echo -ne "\033]0;Title\007"            | Change terminal title               |
| Get-ChildItem                    | ls -al                                 | List files/directories (PowerShell) |
| Copy-Item                        | cp                                     | Copy file/directory (PowerShell)    |
| Move-Item                        | mv                                     | Move/rename (PowerShell)            |
| Remove-Item                      | rm -i                                  | Delete (PowerShell)                 |
| Rename-Item                      | mv                                     | Rename (PowerShell)                 |
| Get-Content                      | cat                                    | Show file content (PowerShell)      |
| Set-Location                     | cd                                     | Change directory (PowerShell)       |
| Push-Location                    | pushd                                  | Push directory (PowerShell)         |
| Pop-Location                     | popd                                   | Pop directory (PowerShell)          |
| Get-Process                      | ps aux                                 | List processes (PowerShell)         |
| Stop-Process                     | kill                                   | Kill process (PowerShell)           |
| Start-Process                    | xdg-open                               | Open file/application (PowerShell)  |
| Get-Date                         | date                                   | Show date (PowerShell)              |
| Get-History                      | history                                | Command history (PowerShell)        |
| Clear-Host                       | clear                                  | Clear screen (PowerShell)           |
| Get-Location                     | pwd                                    | Show current directory (PowerShell) |
| Get-Command                      | which                                  | Find executable (PowerShell)        |
| Get-ComputerInfo                 | uname -a                               | System info (PowerShell)            |

---

_Note : Some PowerShell commands require additional modules or scripts.
