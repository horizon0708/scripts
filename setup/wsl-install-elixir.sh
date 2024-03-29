#!/bin/bash

set -o errexit
set -o pipefail


echo "Installing Elixir ..."

# get erlang solutions repo
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update

sudo apt-get install esl-erlang -y
sudo apt-get install elixir -y

echo "Finished installing Elixir!"