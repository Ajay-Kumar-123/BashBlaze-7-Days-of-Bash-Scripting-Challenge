#!/bin/bash

function perform_backup() {
    local dir_path="$1"
    local timestamp="$(date +'%Y%m%d_%H%M%S')"
    local backup_dir="$dir_path/backup_$timestamp"

    echo "Performing backup of directory: $dir_path"
    echo "Creating backup folder: $backup_dir"

    mkdir "$backup_dir"
    cp -a "$dir_path/" "$backup_dir"

    # Rotation mechanism to keep only the last 3 backups
    local backup_folders=( "$dir_path"/backup_* )
    local num_backups="${#backup_folders[@]}"
    local num_backups_to_keep=3

    if [ "$num_backups" -gt "$num_backups_to_keep" ]; then
        local num_backups_to_remove=$((num_backups - num_backups_to_keep))
        echo "Rotating backups to keep only the last $num_backups_to_keep backups"

        for ((i=0; i<num_backups_to_remove; i++)); do
            echo "Removing old backup folder: ${backup_folders[$i]}"
            rm -rf "${backup_folders[$i]}"
        done
    fi

    echo "Backup completed successfully!"
}

if [ "$#" -eq 1 ]; then
    directory_path="$1"

    if [ -d "$directory_path" ]; then
        perform_backup "$directory_path"
    else
        echo "Error: The specified directory does not exist!"
    fi
else
    echo "Usage: $0 <directory_path>"
fi

