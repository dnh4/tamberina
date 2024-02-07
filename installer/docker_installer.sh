#!/bin/bash
# Update package lists
sudo apt-get update

# Install prerequisites for Docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the fingerprint
sudo apt-key fingerprint 0EBFCD88

# Add the Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"

# Update package lists again
sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce
