# SmoothTerminal - Command Reference

This document provides a complete list of Windows (CMD and PowerShell) commands mapped to their Linux equivalents in **SmoothTerminal**.

---

## Classic CMD Commands

| Windows Command | Linux Equivalent | Description |
| :--- | :--- | :--- |
| `cls` | `clear` | Clear the terminal screen |
| `dir` | `ls -al` | List files and directories with details |
| `copy <src> <dest>` | `cp <src> <dest>` | Copy a file or directory |
| `xcopy <src> <dest>` | `cp -r <src> <dest>` | Copy recursively |
| `move <src> <dest>` | `mv <src> <dest>` | Move or rename files |
| `ren <old> <new>` | `mv <old> <new>` | Rename a file |
| `del <file>` | `rm -i <file>` | Delete a file (interactive confirmation) |
| `erase <file>` | `rm <file>` | Delete a file |
| `md <dir>` | `mkdir <dir>` | Create a new directory |
| `rd <dir>` | `rmdir <dir>` | Remove an empty directory |
| `tree` | `tree -C` | Display directory tree with colors |
| `attrib` | `lsattr` | File attributes |
| `chdir <dir>` | `cd <dir>` | Change directory |
| `pushd <dir>` | `pushd <dir>` | Push directory onto stack |
| `popd` | `popd` | Pop directory from stack |
| `type <file>` | `cat <file>` | Display file contents |
| `more <file>` | `less <file>` | Page-by-page file viewer |
| `edit <file>` / `notepad` | `nano` / `$EDITOR` | Text editor |
| `path` | `echo $PATH` | Display PATH variable |
| `findstr <text>` | `grep <text>` | Search string in files |
| `ipconfig` / `ifconfig` | `ip a` | Display network interfaces and IP addresses |
| `ping <host>` | `ping <host>` | Test network connectivity |
| `tracert <host>` | `traceroute` / `tracepath` | Trace route to network host |
| `netstat` | `ss -tuln` | Modern network socket statistics |
| `arp` | `ip neigh` | Modern ARP table |
| `hostname` | `hostname` | Machine hostname |
| `whoami` | `whoami` | Current logged-in user |
| `tasklist` | `ps aux` | List running processes |
| `taskkill <pid>` | `kill <pid>` | Terminate a process by PID |
| `top` | `htop` / `top` | Interactive process monitor |
| `free` | `free -h` | Display memory usage |
| `df` | `df -h` | Display filesystem disk space |
| `du` | `du -sh *` | Display file and folder sizes |
| `date` | `date` | Display current date |
| `time` | `date +%T` | Display current time |
| `cal` | `cal` | Display calendar |
| `shutdown` | `sudo shutdown now` | Shut down computer |
| `restart` | `sudo reboot` | Restart computer |
| `exit` | `exit` | Exit current shell |
| `help` | `man` | Command manual / help |
| `history` | `history` | Command history |
| `clearhistory` | `fc -p` (zsh) / `history -c` (bash) | Clear command history |
| `pwd` | `pwd` | Display current working directory |
| `where <cmd>` | `which <cmd>` | Locate executable path |
| `ver` / `systeminfo` | `uname -a` | System version and kernel details |
| `lsusb` | `lsusb` | List USB devices |
| `lspci` | `lspci` | List PCI devices |
| `lsblk` / `vol` | `lsblk` | List storage devices and partitions |
| `open` / `start` | `xdg-open` | Open file or URL with default app |
| `explorer` | `xdg-open .` | Open file manager in current directory |
| `setx` | Appends export to rc file | Set persistent environment variable |
| `fc` / `comp` | `diff` | Compare files |
| `assoc` | `file` | Determine file type |
| `color` | `tput setaf` | Set terminal text color |
| `compact` | `gzip` | Compress file |
| `convert` | `convert` | ImageMagick conversion |
| `copy-con` | `cat >` | Create file from console input |
| `diskcopy` | `dd` | Clone disk image |
| `chkdsk` | `fsck` | Check filesystem integrity |
| `chkntfs` | `tune2fs` | Check filesystem configuration |
| `clip` | `xclip` / `wl-copy` / `xsel` | Copy to clipboard |
| `label` | `e2label` | Label partition |
| `mode` | `stty` | Configure terminal settings |
| `print` | `lpr` | Print file |
| `replace` | `rsync` | Sync / replace files |
| `sc` | `systemctl` | Service management |
| `setlocal` | `export` | Set local environment variable |
| `sort` | `sort` | Sort file contents |
| `subst` | `mount --bind` | Bind mount directory |
| `verifier` | `dmesg` | Display kernel messages |
| `w32tm` | `timedatectl` | Configure system time |
| `route` | `ip route` | Display/modify routing table |
| `nslookup` | `nslookup` | Query DNS server |
| `netsh` | `nmcli` | Configure NetworkManager |
| `nbtstat` | `nmblookup` | NetBIOS statistics |
| `net-user` | `sudo useradd` | Create new user |
| `net-user-mod` | `sudo usermod` | Modify user |
| `net-localgroup` | `sudo groupadd` | Create user group |
| `net-localgroup-mod` | `sudo groupmod` | Modify user group |
| `runas` | `sudo -u` | Run command as another user |
| `net-start` / `sc-start` | `systemctl start` | Start service |
| `net-stop` / `sc-stop` | `systemctl stop` | Stop service |
| `net-pause` | `systemctl stop` | Pause service |
| `net-continue` | `systemctl start` | Resume service |
| `sc-query` | `systemctl status` | Check service status |
| `sc-config` | `systemctl edit` | Edit service unit |
| `diskpart` | `fdisk` | Partition disk |
| `format` | `mkfs` | Format partition |
| `mount` | `mount` | Mount filesystem |
| `umount` | `umount` | Unmount filesystem |
| `sfc` | `debsums` / `rpm -Va` / `pacman -Qk` | Verify system package integrity |
| `msinfo32` | `lshw` | Detailed hardware information |
| `logoff` | `pkill -KILL -u $USER` | Log off current user |
| `pause` | Portable pause | Wait for Enter key press |
| `title` | Change terminal title | Change terminal title |

---

## PowerShell Commands

| PowerShell Command | Linux Equivalent | Description |
| :--- | :--- | :--- |
| `Get-ChildItem` | `ls -al` | List files and directories |
| `Copy-Item` | `cp` | Copy file/folder |
| `Move-Item` | `mv` | Move/rename file/folder |
| `Remove-Item` | `rm -i` | Remove file/folder (interactive) |
| `Rename-Item` | `mv` | Rename file/folder |
| `Get-Content` | `cat` | Display file contents |
| `Set-Location` | `cd` | Change directory |
| `Push-Location` | `pushd` | Push directory to stack |
| `Pop-Location` | `popd` | Pop directory from stack |
| `Get-Process` / `Get-ProcessInfo` | `ps aux` | List running processes |
| `Stop-Process` | `kill` | Terminate process |
| `Start-Process` | `xdg-open` | Open file/application |
| `Get-Date` | `date` | Display date |
| `Get-History` | `history` | Command history |
| `Clear-Host` | `clear` | Clear screen |
| `Get-Location` | `pwd` | Print working directory |
| `Get-Command` | `which` | Locate executable path |
| `Get-ComputerInfo` | `uname -a` | System information |
| `Get-DiskInfo` | `df -h` | Disk space information |
| `Get-MemoryInfo` | `free -h` | Memory usage information |
| `Get-CPUInfo` | `lscpu` | CPU hardware information |
| `Get-NetworkInfo` | `ip a` | Network interface information |
| `Get-UserInfo` | `whoami` | Current user info |
| `Get-ServiceInfo` | `systemctl status` | Service status |
