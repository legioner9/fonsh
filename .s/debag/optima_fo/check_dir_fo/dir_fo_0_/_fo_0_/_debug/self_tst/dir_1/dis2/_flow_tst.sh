#!/bin/bash

#. "$HOME/.bashrc"

filename=${FONSH_PATH}/.s/debag/optima_fo/check_dir_fo/dir_fo_0_/_fo_0_/_debug/self_tst/dir_1/dis2/_flow_tst.sh 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

cr_tst_dir_ < dat &>> res

cd "$idir"

unset filename