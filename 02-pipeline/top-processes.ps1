<#
    Skriptname:     top-processes.ps1
    Autor:          Josia Gisiger
    Erstellt am:    30.10.2025
    Version:        1.0
    Beschreibung:   Liest laufende Prozesse aus, sortiert sie nach CPU-Verbrauch, zeigt die Top-N
                    Prozesse an und speichert das Ergebnis in eine Textdatei.
    Letzte Änderung: 30.10.2025 (Changelog: Initiale Version)
#>

$top = Get-Process |
    Sort-Object CPU -Descending |
    Select-Object -First 5 Name, CPU, Id

$top | Format-Table -AutoSize
$top | Out-File -FilePath "top5.txt"