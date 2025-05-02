# Development Environment Setup Script

## Overview

This repository contains a comprehensive configuration script for development environments, targeted at full-stack developers. The script automates the creation of a working directory, installation of essential development tools, and configuration of environment variables.

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
   - Creates a `Workspace` directory in the user's home, if it doesn't exist

2. **Shell Configuration**:
   - Automatically detects which shell is being used (.zshrc or .bashrc)
   - Adds useful aliases (from the alias.txt file) to the shell configuration file

3. **Development Tools Installation**:
   - Java Development Kit (OpenJDK 21)
   - Build tools: Maven and Gradle 
   - Version control: Git
   - C/C++ development: GCC and G++
   - System information: Neofetch
   - JavaScript ecosystem:
     - Node.js (via NVM - Node Version Manager)
     - Bun JavaScript runtime

4. **Environment Configuration**:
   - Sets up JAVA_HOME and adds it to PATH
   - Configures Node Version Manager
   - Sets up Bun runtime environment variables

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

## Included Development Tools

### Java Development
- OpenJDK 21
- Maven
- Gradle

### JavaScript Development
- Node.js (via NVM)
- npm (bundled with Node.js)
- Bun JavaScript runtime

### C/C++ Development
- GCC (GNU Compiler Collection)
- G++ (GNU C++ Compiler)

## Notes

- The script requires superuser permissions to install packages
- Changes to shell configuration files will be applied the next time you open a terminal or source the file
- Node.js is installed using NVM, allowing easy version management

---

*Last updated: May 2025*