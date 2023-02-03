#!/bin/bash

#. "$HOME/.bashrc"

filename="${FONSH_PATH}/stash/every_itime_sh/copy_precommit.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

wrp_fifs2_ cp -uf ${FONSH_PATH}/stash/pre-commit ${FONSH_PATH}/.git/hooks -f1 -d2

cd "$idir"

unset filename