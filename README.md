# The Open Source Audit: VLC Media Player

This repository contains a suite of 5 Bash shell scripts designed for a university capstone project called **"The Open Source Audit."** These scripts focus on auditing VLC Media Player (package: `vlc`), covering its origin, multimedia decoding capabilities, and system integration.

## Project Structure

- `01_sys_identity.sh`: System Identity Report (variables, command substitution).
- `02_pkg_inspector.sh`: FOSS Package Inspector (conditionals, case statements).
- `03_dir_audit.sh`: Disk and Permission Auditor (loops, arrays).
- `04_log_analyzer.sh`: Log File Analyzer (while loops, counters).
- `05_manifesto_gen.sh`: Interactive Markdown/Manifesto Generator (user input, file I/O).

## How to Set Up

Before running the scripts, you must ensure they have "execute" permissions. Use the following command in your terminal:

```bash
chmod +x *.sh
```

## How to Run Each Script

### 1. System Identity Report
Displays your Linux distribution, kernel version, and project meta-data.
```bash
./01_sys_identity.sh
```

### 2. FOSS Package Inspector
Checks if VLC is installed and provides philosophy notes on common multimedia tools.
```bash
./02_pkg_inspector.sh
```

### 3. Disk and Permission Auditor
Audits the directories where VLC stores its binaries, plugins, and configurations.
```bash
./03_dir_audit.sh
```

### 4. Log File Analyzer
Analyzes a log file for specific keywords. If no file is provided, it generates a dummy VLC debug log.
```bash
# To run with a default dummy log:
./04_log_analyzer.sh

# To run with a specific file and keyword:
./04_log_analyzer.sh my_vlc.log "codec error"
```

### 5. Open Source Manifesto Generator
An interactive script that generates a personalized manifesto based on your input.
```bash
./05_manifesto_gen.sh
```

## Author
- **Author:** Akshat a Khare
- **Course:** Open Source Software
- **Project:** The Open Source Audit
