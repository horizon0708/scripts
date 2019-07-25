#!/bin/bash

set -o errexit
set -o pipefail

echo "Installing Fzf ..."

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Finished installing Fzf!