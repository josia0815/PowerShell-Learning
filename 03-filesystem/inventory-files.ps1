<#
    Skriptname:     inventory-files.ps1
    Autor:          Josia Gisiger
    Erstellt am:    30.10.2025
    Version:        1.0
    Beschreibung:   Fragt einen Ordnerpfad ab, prüft ob er existiert, listet alle Dateien rekursiv
                    mit Pfad und Größe in MB und exportiert die Liste als CSV.
    Letzte Änderung: 6.11.2025 (Changelog: Initiale Version)
#>

#Prerequisites
Add-Type -AssemblyName System.Windows.Forms

#Shows a Folder Picker System Dialog
$folderselection = New-Object System.Windows.Forms.OpenFileDialog -Property @{  
InitialDirectory = [Environment]::GetFolderPath('Desktop')  
CheckFileExists = 0    
FileName = "Choose Folder"  
}  
$folderselection.ShowDialog()

#Tests if the selected folder path is found and valid
$src = Split-Path -Parent $folderselection.FileName 
if(-not (Test-Path $src)){
    Write-Host "Pfad nicht gefunden: $src"
    exit 
}

#actual function to get all items and their size
$files = Get-ChildItem -Path $src -File -Recurse | 
    Select-Object FullName, 
        @{Name="SizeMB";Expression={[math]::Round($_.Length/1MB,2)}}

#output 
$filename = "FileList.csv"
$filepath = Join-Path $PSScriptRoot $filename        
$files | Export-Csv -NoTypeInformation -Path $filepath
Write-Host "Dateiliste geschrieben: $filename"