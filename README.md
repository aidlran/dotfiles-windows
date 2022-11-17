# Windows Dotfiles

This repository contains configs and scripts from my Windows PC, which is generally used for gaming and music production.

At the moment there is only a backup script which I execute manually. It's mostly non-interactive, aside from providing a password for the 7z archive.

## Backup Script

First, 7zip is used to make an encrypted backup archive of `C:\`. This backup takes into account the exclude file, which it expects to find in the HOME directory - i.e. `C:\Users\[username]\exclude.txt`. The exclude file isn't very exhaustive. I only bother adding to it if I notice something unimportant taking a lot of time or storage space to archive while running the script. Code I am testing to enable incremental backups is commented out for now.

After the system backup is complete, the script then uses `ROBOCOPY` (basically the Windows equivalent of `rsync`) to sync mod manager profiles from my game drive(s) to my server. These directories can be huge and don't really change, so it doesn't make sense to me to make archive files. It also means I can easily sync mods across multiple machines, or perhaps just host my mods over the network in the first place.

All data is sent to or synced with my server via pre-configured Samba shares. I'd link my server dotfiles here to show you the `smb.conf` but that repo is private!
