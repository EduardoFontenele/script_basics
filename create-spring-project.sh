#!/bin/bash
clear
workdir="/home/$USER/Desktop"

check_for_destination() {
    if [ -d "$workdir" ]; then
        return 1;
    else
        return 0;
    fi
}

check_for_destination

if [ $? -eq 0 ]; then
    echo "Destination not found. Aborting"
    exit 1
fi

collect_data() {
    read -p "Enter the name: " project_name
    read -p "Enter the group ID: " group_id
    read -p "Enter the Java version: " java_version
    read -p "Enter the project description: " project_description
}

collect_data

package_name="$group_id.$project_name"
clear

confirm_info() {
    clear
    echo "Project name: $project_name"
    echo "Group id: $group_id"
    echo "Java version: $java_version"
    echo "Package name: $package_name"
    echo "Project description: " $project_description
    read -p "Is that data correct? [Y/n] " confirm_data
}

confirm_info

while [ "$confirm_data" = "n" ]; do
    clear
    collect_data
    confirm_info
done

created_project="$workdir/$project_name"

if [ -d "$created_project" ]; then
    echo "Project already present. Aborting..."
    exit 1
fi

mkdir $created_project

$SPRING_CLI/spring init --build=maven -d=web,lombok,data-jpa,h2 --description=$project_description -n=$project_name -g=$group_id -p=jar --package-name=$package_name -j=$java_version $created_project


