#!/bin/bash


# Constant values
# ==============================================================================
CONF_DIR=~/conf


# Functions
# ==============================================================================
apt_update_only_first_time() {
    if [ -z $APT_UPDATE_CALLED ]; then
        sudo apt update
        APT_UPDATE_CALLED=1
    fi
}


# Pre-process
# ==============================================================================
mkdir -p $CONF_DIR

