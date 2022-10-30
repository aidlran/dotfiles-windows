# Windows PC Backup Script

This is the backup script I use on my Windows PC, which is generally used for gaming and music production. All data is sent to or synced with my server via pre-configured Samba shares.

First, 7zip is used to make an encrypted backup archive of `C:\`. This backup will exclude paths listed in the exclude file, which it looks for in the HOME directory - i.e. `C:\Users\[username]\exclude.txt`. The exclude file isn't very exhaustive. I only bother adding to it if I notice something unimportant taking a lot of time or storage space to archive while running the script. Code I am testing to enable incremental backups is commented out for now.

After the system backup is complete, the script then uses `ROBOCOPY` (basically the Windows equivalent of `rsync`) to sync mods from my secondary game drive(s) to my server. These directories can be huge and don't really change, so it doesn't make sense to me to archive them. It also means I can easily sync mods across multiple machines, or perhaps just host my mods over the network in the first place.

