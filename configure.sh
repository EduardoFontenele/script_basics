#!/bin/bash

find_shell_config_file() {
    USER_HOME="/home/$USER"
    
    if [ -f "$USER_HOME/.zshrc" ]; then
        echo "$USER_HOME/.zshrc"
        return 0
    elif [ -f "$USER_HOME/.bashrc" ]; then
        echo "$USER_HOME/.bashrc"
        return 0
    else
        echo "No shell configuration file found (.zshrc or .bashrc)."
        return 1
    fi
}

USER_HOME="/home/$USER"
SHELL_CONFIG=$(find_shell_config_file)

if [ $? -ne 0 ]; then
    echo "Error: No shell configuration file found."
    exit 1
fi

if [ ! -d "$USER_HOME/Workspace" ]; then
    mkdir $USER_HOME/Workspace
fi

cat alias.txt >> "$SHELL_CONFIG"
echo "Aliases added to $SHELL_CONFIG"

sudo apt install -y git
sudo apt install -y maven
sudo apt install -y gradle
sudo apt install -y openjdk-21-jdk
sudo apt install -y neofetch

find_java_home() {
    potential_paths=(
        "/usr/lib/jvm/java-21-openjdk-amd64"
        "/usr/lib/jvm/java-21-openjdk"
        "/usr/lib/jvm/java-21-oracle"
        "/usr/lib/jvm/default-java"
        "/usr/lib/jvm"
    )
    
    for path in "${potential_paths[@]}"; do
        if [ -d "$path" ]; then
            if [ -d "$path/bin" ] && [ -f "$path/bin/java" ]; then
                echo "$path"
                return 0
            elif [ -d "$path" ]; then
                for jdk in "$path"/java-*-openjdk* "$path"/java-*-oracle*; do
                    if [ -d "$jdk" ] && [ -d "$jdk/bin" ] && [ -f "$jdk/bin/java" ]; then
                        echo "$jdk"
                        return 0
                    fi
                done
            fi
        fi
    done
    
    if command -v java >/dev/null 2>&1; then
        java_bin=$(readlink -f "$(command -v java)")
        echo "${java_bin%/bin/java}"
        return 0
    fi
    
    return 1
}

setup_java_home() {
    java_home=$1
    rc_file=$2
    
    if grep -q "export JAVA_HOME=" "$rc_file"; then
        sed -i "s|export JAVA_HOME=.*|export JAVA_HOME=$java_home|" "$rc_file"
        echo "JAVA_HOME updated in $rc_file"
    else
        echo -e "\n# Java Environment Variables" >> "$rc_file"
        echo "export JAVA_HOME=$java_home" >> "$rc_file"
        echo 'export PATH=$JAVA_HOME/bin:$PATH' >> "$rc_file"
        echo "JAVA_HOME configured in $rc_file"
    fi
}

JAVA_HOME=$(find_java_home)

if [ -z "$JAVA_HOME" ]; then
    echo "JDK not found. Please check if Java is correctly installed."
    exit 1
fi

echo "JDK found at: $JAVA_HOME"
setup_java_home "$JAVA_HOME" "$SHELL_CONFIG"

echo "Configuration completed. Restart your terminal or run 'source $SHELL_CONFIG' to apply changes."