#!/bin/bash


# Constant values
# ==============================================================================
CONF_DIR=~/conf
BUILD_DIR=~/build


# Functions
# ==============================================================================
apt_update_only_first_time() {
    if [ -z $APT_UPDATE_CALLED ]; then
        echo "---- (common) apt update ----"
        sudo apt update
        APT_UPDATE_CALLED=1
    else
        echo "---- (common) skip apt update ----"
    fi
}


# Pre-process
# ==============================================================================
mkdir -p $CONF_DIR
mkdir -p $BUILD_DIR
apt_update_only_first_time
