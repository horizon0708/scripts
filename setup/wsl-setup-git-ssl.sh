#!/bin/bash

set -o errexit
set -o pipefail
__USERNAME="James"

# doesn't work atn
# refer to https://florianbrinkmann.com/en/ssh-key-and-the-windows-subsystem-for-linux-3436/#comment-3109
ln -s "/mnt/c/Users/${__USRENAME}/.ssh" ~/.ssh
chmod 600 ~/.ssh/id_rsa


