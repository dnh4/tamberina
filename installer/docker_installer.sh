#!/bin/bash
# Function to display progress messages
function progress_message {
    echo "--------------------------------------"
    echo "$1"
    echo "--------------------------------------"
}
# Afficher un message d'introduction
echo "Installing the dependacies"
echo "This script will install Docker and deploy Tamberina on your system."

# Check the operating system
if [ -f /etc/debian_version ]; then
    # If /etc/debian_version exists, it's Debian
    progress_message "Operating System: Debian"
    # Execute the Debian package-specific installation script
    ./docker_debian_installer.sh
elif [ -f /etc/lsb-release ]; then
    # If /etc/lsb-release exists, it's Ubuntu (or Ubuntu-based)
    progress_message "Operating System: Ubuntu (or Ubuntu-based)"
    # Execute the Debian package-specific installation script
    ./docker_debian_installer.sh
else
    # If the operating system is neither Debian nor Ubuntu, display an error message
    progress_message "Error: Unsupported operating system."
    exit 1
fi


# Display completion message
progress_message "Installation completed. Tamberina is ready to use!"
