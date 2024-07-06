#!/bin/bash

# Create Jenkins repository file using Vim
cat <<EOF | sudo tee /etc/yum.repos.d/jenkins.repo
[jenkins]
name=Jenkins
baseurl=http://pkg.jenkins.io/redhat
gpgcheck=1
EOF

# Import the Jenkins GPG key
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

# Update the package cache
yum update -y

# Install required dependencies
yum install -y fontconfig java-17-openjdk

# Install Jenkins
yum install -y jenkins

# Reload systemd manager configuration
systemctl daemon-reload

# Enable Jenkins to start on boot
systemctl enable jenkins

# Start Jenkins service
systemctl start jenkins

# Check Jenkins status
systemctl status jenkins


# Indicate that the setup is complete
echo "Setup complete"
