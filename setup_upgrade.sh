#!/bin/bash

. ./common.sh

# apt
sudo apt update
sudo apt upgrade -y
sudo apt install $(check-language-support)
