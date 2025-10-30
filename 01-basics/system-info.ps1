<#
    Skriptname:     system-info.ps1
    Autor:          Josia Gisiger
    Erstellt am:    30.10.2025
    Version:        1.0
    Beschreibung:   Zeigt grundlegende Systeminformationen wie PowerShell-Version, Computername,
                    aktueller Benutzer, Datum/Uhrzeit und Admin-Status.
    Letzte Änderung: 30.10.2025 (Changelog: Initiale Version)
#>

$psVer = $PSVersionTable.PSVersion.ToString()
$pc = $env:COMPUTERNAME
$user = $env:USERNAME
$Date = Get-Date

$IsAdmin = ([Security.Principal.WindowsPrincipal] `
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)


Write-Host "PowerShell Version : $psVer"
Write-Host "Computername       : $pc"
Write-Host "Benutzer           : $user"
Write-Host "Admin context      : $IsAdmin"
Write-Host "Datum              : $Date"