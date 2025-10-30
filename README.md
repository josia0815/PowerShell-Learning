# PowerShell Learning Path

This repository is a personal PowerShell learning track.

Each folder contains one standalone tool.
The folders are ordered from basic to advanced.
The goal is to show progress from simple console output to a packaged support utility that can be turned into an `.exe`.

---

## Folder Overview

### `01-basics/`

**Tool:** `system-info.ps1`
**Purpose:** Print basic system information such as PowerShell version, computer name, current user, date/time, and admin status.
**Focus:** Variables and output.

---

### `02-pipeline/`

**Tool:** `top-processes.ps1`
**Purpose:** List running processes, sort them by CPU usage, show the top results, and write them to a file.
**Focus:** Pipeline (`|`), sorting, filtering, exporting.

---

### `03-filesystem/`

**Tool:** `inventory-files.ps1`
**Purpose:** Ask for a folder path, verify it, scan all files (recursive), calculate file sizes, and export the result to CSV.
**Focus:** User input, file system access, calculated properties.

---

### `04-logic/`

**Tool:** `admin-menu.ps1`
**Purpose:** Provide an interactive console menu in a loop. Options include: show top processes, show disk free space, or exit.
**Focus:** Loops, `switch`, basic console UX.

---

### `05-functions/`

**Tool:** `audit-and-disk.ps1`
**Purpose:** Define and call reusable functions with parameters (for example: find large files, report disk space). Include comment-based help.
**Focus:** Functions, parameters, clean output objects.

---

### `06-error-handling/`

**Tool:** `copy-safe.ps1`
**Purpose:** Copy data from source to destination with validation, structured error handling (`try` / `catch`), and error logging to file.
**Focus:** Reliability, safe file operations, logging.

---

### `07-report-tool/`

**Tool:** `system-report.ps1`
**Purpose:** Collect a full system report (OS info, uptime, total processes, top CPU processes, drive status) and write it to a text file for later analysis.
**Focus:** System inspection and formatted reporting.

---

### `08-backup-tool/`

**Tool:** `backup-run.ps1`
**Purpose:** Run a backup job with parameters (`-Source`, `-Dest`), measure runtime, copy files, and log results (timestamps, duration, file counts).
**Focus:** Script parameters, automation, job logging.

---

### `09-health-monitor/`

**Tool:** `monitor-console.ps1`
**Purpose:** Run a live interactive monitoring console. Features:

* show top CPU processes in a loop
* check drive free space with color warnings
* compare source vs backup folders
  **Focus:** Realtime output, colored console messages, admin-style monitoring.

---

### `10-final-program-exe/`

**Tool:** `quick-support.ps1`
**Purpose:** Generate a support dump for troubleshooting (system info, network status, service status). Save it to `support-dump.txt` and display a message box.
This script is intended to be packaged as an `.exe` for end users using `ps2exe`.
**Focus:** User-facing output and packaging.

---

## Usage

1. Open any folder.
2. Run the `.ps1` file in PowerShell, for example:

   ```powershell
   .\system-info.ps1
   ```

   or

   ```powershell
   .\backup-run.ps1 -Source "C:\Data" -Dest "D:\Backup"
   ```

Each tool is self-contained. No imports from other folders.

---

## Goals

By the end of this repo it should be possible to:

* Read and report system state
* Work with files and folders safely
* Build interactive console tools
* Produce support-style output for non-technical users
* Package a PowerShell script as an `.exe`
