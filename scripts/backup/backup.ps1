# Aidan's Windows backup script

# Locate 7zip executable
$7z = "$env:ProgramFiles\7-Zip\7z.exe"
Set-Alias 7zip $7z

# Get date strings
$dateMonth = get-date -Uformat "%Y-%m"
$dateFull = get-date -Uformat "%Y-%m-%d"

# Backup system drive
7zip a -p -mhe=on -mx9 -mmt12 -t7z -spf "\\NAS\Backup\pc\$dateFull.7z" "C:\" -xr@"$PSScriptRoot\exclude.txt"

# # TODO: incremental backups
# # Check if a full backup exists for this month
# if ([System.IO.Directory]::Exists("\\NAS\Backup\pc\$dateMonth"))
# {
  # # Incremental backup
  # 7zip u "\\NAS\Backup\pc\$dateMonth.7z" -u- -"up0q3r2x2y2z0w2!\\NAS\Backup\pc\$dateFull.7z" "C:\" -xr@"$env:USERPROFILE\exclude.txt"
# }
# else
# {
  # # Full backup
  # 7zip a -p -mhe=on -mx9 -mmt12 -t7z -spf "\\NAS\Backup\pc\$dateMonth.7z" "C:\" -xr@"$PSScriptRoot\exclude.txt"
# }

# Sync mods & profiles
ROBOCOPY "E:\MO2 Profiles" "\\NAS\Modding\MO2" /J /COMPRESS /MT:12 /MIR
ROBOCOPY "E:\Vortex" "\\NAS\Modding\Vortex" /J /COMPRESS /MT:12 /MIR
