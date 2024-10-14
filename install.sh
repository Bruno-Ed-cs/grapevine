#! /bin/bash

path=$(cd "$(dirname "$0")" ; pwd)
link="alias grapevine='lua $path/main.lua'"

echo "$link" >> ~/.bashrc
