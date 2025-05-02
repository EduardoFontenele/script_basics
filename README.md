# Development Environment Setup Script

## Overview

This repository contains a basic configuration script for development environments, especially targeted at Java developers. The script automates the creation of a working directory, installation of essential tools, and configuration of useful aliases.

## Repository Structure

```
.
├── alias.txt       # File containing useful terminal aliases
├── configure.sh    # Main configuration script
└── README.md       # This documentation file
```

## What the Script Does

The `configure.sh` script performs the following tasks:

1. **Working Directory Creation**:
   - Checks and creates a `Workspace` directory in the user's home, if it doesn't exist

2. **Aliases Configuration**:
   - Automatically detects which shell is being used (.zshrc or .bashrc)
   - Adds useful aliases (from the alias.txt file) to the shell configuration file

3. **Development Tools Installation**:
   - Git: Version control system
   - Maven: Build automation tool for Java projects
   - Gradle: Alternative build automation system to Maven
   - OpenJDK 21: Java Development Kit version 21

## How to Use

1. Clone this repository:
   ```bash
   git clone [REPOSITORY_URL]
   cd script_basics
   ```

2. Give execution permission to the script:
   ```bash
   chmod +x configure.sh
   ```

3. Run the script:
   ```bash
   ./configure.sh
   ```

## Requirements

- Debian/Ubuntu-based operating system
- Superuser access (sudo)
- Internet connection for package downloads

## Customization

- Modify the `alias.txt` file to add your own aliases
- Edit `configure.sh` to install additional tools as needed

## Notes

- The script requires superuser permissions to install packages
- Changes to .zshrc or .bashrc files will be applied the next time you open a terminal

---

*Last updated: May 2025*