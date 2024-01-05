# Windows PC backup script

# Locate 7zip executable
$7z = "$env:ProgramFiles\7-Zip\7z.exe"
Set-Alias 7zip $7z

# Get date strings
#$dateMonth = get-date -Uformat "%Y-%m"
$dateFull = get-date -Uformat "%Y-%m-%d"

# Backup system drive
7zip a -p -mhe=on -mx9 -mmt24 -t7z -spf "\\NAS\Backup\pc\windows\$dateFull.7z" "C:\" -xr@"$PSScriptRoot\Exclude.txt"

# # Incremental backups - we don't backup regularly enough to bother with this but it's here
# # Check if a full backup exists for this month
# if ([System.IO.Directory]::Exists("\\NAS\Backup\pc\$dateMonth"))
# {
  # # Incremental backup
  # 7zip u "\\NAS\Backup\pc\windows\$dateMonth.7z" -u- -"up0q3r2x2y2z0w2!\\NAS\Backup\pc\windows\$dateFull.7z" "C:\" -xr@"$env:USERPROFILE\exclude.txt"
# }
# else
# {
  # # Full backup
  # 7zip a -p -mhe=on -mx9 -mmt24 -t7z -spf "\\NAS\Backup\pc\windows\$dateMonth.7z" "C:\" -xr@"$PSScriptRoot\exclude.txt"
# }

# # Sync mods & profiles - disabled now
# ROBOCOPY "E:\MO2 Profiles" "\\NAS\Modding\MO2" /J /COMPRESS /MT:24 /MIR
# ROBOCOPY "E:\Vortex" "\\NAS\Modding\Vortex" /J /COMPRESS /MT:24 /MIR
