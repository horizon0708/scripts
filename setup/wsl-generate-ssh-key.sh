#!/bin/bash

set -o errexit
set -o pipefail

echo "Change email!"
exit 1

ssh-keygen -o -t rsa -b 4096 -C "email@example.com"


# Re: id_rsa too permissive error & chmod doesn't alter permissions
# Add 
# 
# [automount]
# options = "metadata"
# 
# to /etc/wsl.conf
# restart WSL with PowerShell Prompt
#
# Restart-Service LxssManager
# Now alter permissions
#
# chmod 400 ~/.ssh/id_rsa
