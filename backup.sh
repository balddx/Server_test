#!/bin/bash
echo "Minecraft Server Backup Script"
echo

# Create backups directory if it doesn't exist
mkdir -p backups

# Get current date and time for backup filename
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_file="backups/world_backup_$timestamp.tar.gz"

echo "Creating backup of world data..."
echo "Backup will be saved to: $backup_file"

# Create the backup
tar -czf "$backup_file" world world_nether world_the_end

echo
echo "Backup complete!"
echo