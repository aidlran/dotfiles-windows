# Windows Dotfiles

This repository contains configs and scripts for Windows, which I use mostly for gaming, music production, and some development tasks.

## Scripts

### Backup

My backup script is executed manually every couple of weeks or so since I don't actually use Windows too often. Not a lot changes on the file system since I store most of my data on my server (which has plenty of automation and redundancy.) Anything local that is important to me tends to be backed up somehow anyway: e.g. game saves sync to the cloud these days.

My server hosts Samba shares. Windows has its own very restricted user account which it logs in to in order to push data.

The script runs in two phases:

1. A 7-Zip encrypted archive of `C:\`, taking into account the `exclude.txt`. Code I am testing to enable incremental backups is commented out for now.

2. `ROBOCOPY` is used to push mods & mod manager profiles to my server. Honestly this is probably the most important part. I'm not doing all of that setup again...

## TODO

- [ ] Incremental backups
- [ ] Separate browser backup

## Fresh Install Checklist

Don't mind this - just a note to self.

- [X] [Disable telemetry 🤮](https://www.makeuseof.com/windows-10-11-disable-telemetry/)
- [X] Install [7-Zip](https://www.7-zip.org)
- [X] Install drivers
  - [AMD Ryzen Master](https://download.amd.com/Desktop/AMD-Ryzen-Master.exe)
  - [Nvidia GeForce Experience](https://www.nvidia.com/en-gb/geforce/geforce-experience/)
  - Chipset ([Asus Prime X670](https://www.asus.com/uk/motherboards-components/motherboards/prime/prime-x670-p/helpdesk_download/?model2Name=PRIME-X670-P))
- [X] Download updates
- [X] Disable indexing on drives
- [X] Configure Bitlocker & restart
- [X] Uninstall bloatware apps
- [X] Go through Windows Settings
- [X] Go through msconfig
- [X] Go through Edge settings
- [X] Organise Start Menu
- [X] Restore dotfiles
