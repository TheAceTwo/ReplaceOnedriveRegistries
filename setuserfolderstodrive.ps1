# Define new folder locations inside Google Drive
$googleDrivePath = "$env:USERPROFILE\My Drive (mrcodypearl@gmail.com)"
$folders = @{
    "Personal"    = "$googleDrivePath\Documents"
    "Downloads"   = "$googleDrivePath\Downloads"
    "My Music"    = "$googleDrivePath\Music"
    "My Video"    = "$googleDrivePath\Videos"
    "My Pictures" = "$googleDrivePath\Pictures"
    "Desktop"     = "$googleDrivePath\Desktop"
    "Contacts"    = "$googleDrivePath\Contacts"
    "Favorites"   = "$googleDrivePath\Favorites"
    "Links"       = "$googleDrivePath\Links"
    "Searches"    = "$googleDrivePath\Searches"
}

# Update the registry values
foreach ($folder in $folders.Keys) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name $folder -Value $folders[$folder]
}

# Force Windows to recognize changes
Stop-Process -Name explorer -Force
Start-Process explorer
Write-Host "User folders successfully updated to $googleDrivePath"