PowerShell Learning Path

This repository is a personal PowerShell learning track. Each folder contains one standalone tool. The folders are ordered from basic to advanced. The goal is to show growth from simple console output to a packaged support utility that can be turned into an .exe.

Folder overview

01-basics
system-info.ps1
Print basic system information such as PowerShell version, computer name, current user, and admin status.

02-pipeline
top-processes.ps1
List running processes, sort by CPU usage, show the top results, and write them to a file. Focus on pipeline usage and object filtering.

03-filesystem
inventory-files.ps1
Ask for a folder path, verify it, scan all files, calculate file sizes, and export the result to CSV. Focus on input handling and file system access.

04-logic
admin-menu.ps1
Interactive text menu in a loop. Show top processes, show disk free space, or exit. Focus on loops, switch, and basic console UX.

05-functions
audit-and-disk.ps1
Define reusable functions with parameters (for example find large files and report disk space). Show how to document functions and return structured data.

06-error-handling
copy-safe.ps1
Copy data from source to destination with validation, try/catch, and error logging. Focus on reliability and safe file operations.

07-report-tool
system-report.ps1
Collect a full system report (OS info, uptime, process info, disk status) and write it to a single text file for later analysis.

08-backup-tool
backup-run.ps1
Run a timestamped backup job with parameters, runtime measurement, and logging of results. Moves toward real admin automation.

09-health-monitor
monitor-console.ps1
Live console tool. Repeatedly show top CPU processes, check disk space with color warnings, and compare backup source vs target. Simulates a lightweight monitoring console.

10-final-program-exe
quick-support.ps1
Generate a support dump for troubleshooting (system info, network status, service status), save it to a file, and display a message box. This script is intended to be packaged as an .exe for end users.

Usage

Open any folder. Run the .ps1 file inside it in PowerShell. Each tool is self-contained and does not depend on other folders.

Goal

By the end of this repo it should be possible to:

* read and write system state
* work with files and folders safely
* build interactive console tools
* produce support output for non-technical users
* package a PowerShell script as an .exe

