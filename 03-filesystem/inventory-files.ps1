<#
    Skriptname:     inventory-files.ps1
    Autor:          Josia Gisiger
    Erstellt am:    30.10.2025
    Version:        1.0
    Beschreibung:   Fragt einen Ordnerpfad ab, prüft ob er existiert, listet alle Dateien rekursiv
                    mit Pfad und Größe in MB und exportiert die Liste als CSV.
    Letzte Änderung: 6.11.2025 (Changelog: Initiale Version)
#>

$src = Read-Host "Quellordner Pfad"
if(-not (Test-Path $src)){
    Write-Host "Pfad nicht gefunden: $src"
    exit 
}

$files = Get-ChildItem -Path $src -File -Recurse | 
    Select-Object FullName, 
        @{Name="SizeMB";Expression={[math]::Round($_.Length/1MB,2)}}

$filepath = "filelist.csv"        
$files | Export-Csv -NoTypeInformation -Path $filepath
Write-Host "Dateiliste geschrieben: $filepath"