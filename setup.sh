#!/bin/bash

. ./common.sh

bash -x setup_upgrade.sh
bash -x setup_git.sh
bash -x setup_vim.sh
bash -x setup_tmux.sh
bash -x setup_powerline-shell.sh
