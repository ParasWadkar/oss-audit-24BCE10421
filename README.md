# The Open Source Audit | VITyarthi Capstone
**Course:** Open Source Software (NGMC)  
**Student Name:** Paras Pitu Wadkar  
**Registration Number** 24BCE10421
**Target Software:** Git (Version Control System)

## Project Overview
This repository contains the technical component of the Open Source Audit capstone. The project explores the origin, licensing (GPL v2), and Linux integration of Git, alongside a suite of automation scripts demonstrating practical system administration skills.

## Included Scripts
1. **identity.sh**: Generates a system identity report (Kernel, Distro, Uptime).
2. **inspector.sh**: Checks if Git is installed and explains its OSS purpose.
3. **auditor.sh**: Audits system directories for disk usage and permissions.
4. **analyzer.sh**: Scans system logs for specific keywords (e.g., ERROR/WARNING).
5. **manifesto.sh**: An interactive script that generates a personalized OSS philosophy statement.

## How to Run
To execute these scripts on a Linux environment (Ubuntu/Fedora/Debian):

1. **Clone the repository:**
   git clone https://github.com/ParasWadkar/oss-audit-24BCE10421.git

2. **Navigate to the directory:**
```
   cd oss-audit-24BCE10421/scripts
```

3. **Make scripts executable:**
```
   chmod +x *.sh
```

4. **Run a script (Example):**
```
   ./identity.sh
```

## Requirements
- A Linux-based OS (Physical or Virtual Machine)
- Bash Shell
- Git (for the inspector script to detect)